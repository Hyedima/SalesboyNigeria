using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.Extensions.Configuration;
using PayStack.Net;
using SalesboyNigeria.Controllers;
using SalesboyNigeria.Models;
using SalesboyNigeria.setup;
using Paystack.Net.SDK.Transactions;

namespace SalesboyNigeria.Controllers
{
    public class PaymentController : Controller
    {
        private salesboyEntities db = new salesboyEntities();
        private readonly string token;
        private PayStackApi Paystack { get; set; }
        public PaymentController()
        {
            string token = "sk_test_c34daff57ee8bcd6f471cd266c78b46e36a4c7f1"; //"pk_live_6ffd5eddcf21046c17ff8242d4d09820705c6150"; //ConfigurationManager.AppSettings["paystackKey"]; ;
            Paystack = new PayStackApi(token);
        }
        // GET: Payment
        //public ActionResult Pay()
        //{
        //    return View();
        //}
        [HttpPost]
        public async Task<ActionResult> Pay(string email, int amount, string name, string phone, string country, string city, string address, string zip, string landmark)
        {
            string userid = Session["userid"].ToString();
            TransactionInitializeRequest request = new TransactionInitializeRequest ()
            {
                
                //SplitCode = "SPL_2I9KJMPYkE",
                AmountInKobo = amount * 100, //Amount is in kobo thats why we have to multiply by 100
                Email = email,
                //phone = phone,
                Reference = Generate().ToString()+"_SPLASH_",
                Currency = "NGN",
                CallbackUrl = "https://localhost:44375/Products/verify"
            };

            TransactionInitializeResponse response = Paystack.Transactions.Initialize(request);
            if (response.Status)
            {
                var transaction = new Payment()
                {
                    id = response.Data.Reference,
                    name = name,
                    trnxid = request.Reference,
                    email = email,
                    userid = userid,
                    phone = phone,
                    amount = amount,
                    trnxdate = DateTime.Now,
                    status = response.Status.ToString(),
                    notes = "Payment for Products by " + name + " on " + DateTime.Now,
                    gatewayref = request.Reference,
                    paymenttype = "Online Payment",
                    category = "NGN",
                   title = "Payment for products",
                };
                db.Payments.Add(transaction);

                //Remove items from cart
                foreach (var item in db.Carts.Where(p => p.useremail == email).ToList())
                {
                    //ad cart items 
                    db.Sales.Add(new Sale
                    {
                        id = GenerateID.GetID(),
                        userid = userid,
                        email = email,
                        productid = item.productid,
                        productname = item.Product.productname,
                        description = item.Product.description,
                        amountpaid = amount, //total amount paid for all the items bought in this batch
                        qty = Convert.ToInt32(item.qty),
                        unitprice = Convert.ToDecimal(item.Product.price),
                        totalcost = Convert.ToDecimal(item.Product.price * item.qty),
                        discountperc = Convert.ToInt32(item.Product.discount),
                        discountamount = Convert.ToDecimal(item.discount),
                        insertdate = DateTime.Now,
                        orderid = request.Reference
                    });
                    //delete item from cart
                    db.Carts.Remove(db.Carts.Find(item.id));
                }
                //Create order
                db.Orders.Add(new Order
                {
                    id = setup.GenerateID.GetID(),
                    batchid = response.Data.Reference,
                    useremail = email,
                    paymentid = response.Data.Reference,
                    orderdate = DateTime.Now,
                    IsShipping = "Fales",
                    frieght = null,
                    shipperid = null,
                    insertdate = DateTime.Now.ToString(),
                    customerid = userid,
                    status = "Ordered",
                    notes = "payment for items is don't, its now on the shipment process",
                    customeremail = email,
                    paymentstatus = "Pending",
                    Country = country,
                    city = city,
                    shipmentaddress = address,
                    zip = zip,
                    phone = phone,
                    landmark = landmark
                });

                await db.SaveChangesAsync();
                TempData["success"] = "true";
                TempData["message"] = "Payment done successfully!!";
                return Redirect(response.Data.AuthorizationUrl);
            }
            TempData["success"] = "false";
            TempData["message"] = response.Message;
            return RedirectToAction("Checkout","Products");
        }

        //[HttpGet]
        //public ActionResult Donations()
        //{
        //    var transactions = db.Payments.Where(x => x.status == "true").ToList();
        //    ViewData["transactions"] = transactions;
        //    return View();
        //}

        [HttpGet]
        public async Task<ActionResult> Verify(string reference)
        {
            TransactionVerifyResponse response = Paystack.Transactions.Verify(reference);
            if (response.Data.Status == "success")
            {
                var transaction = db.Payments.Where(x => x.gatewayref == reference).FirstOrDefault();
                if (transaction != null)
                {
                    transaction.status = "true";
                    db.Payments.AddOrUpdate(transaction);
                    await db.SaveChangesAsync();
                    return RedirectToAction("Donations");
                }
            }
            ViewData["error"] = response.Data.GatewayResponse;
            return RedirectToAction("Index");
        }

        public static int Generate()
        {
            Random rand = new Random((int)DateTime.Now.Ticks);
            return rand.Next(100000000, 999999999);
        }

        public ActionResult PaymentPage()
        {
            return View();
        }
        [HttpPost]
        public async Task<JsonResult> InitializePayment(string email, int amount, string firstname, string lastname)
        {
            string secretKey = ConfigurationManager.AppSettings["PaystackSecret"];
            var paystackTransactionAPI = new PaystackTransaction(secretKey);
            var response = await paystackTransactionAPI.InitializeTransaction(email, amount, firstname, lastname, "http://localhost:17869/order/callback");
            //Note that callback url is optional
            if (response.status == true)
            {
                return Json(new { error = false, result = response }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { error = true, result = response }, JsonRequestBehavior.AllowGet);

        }
    }
}