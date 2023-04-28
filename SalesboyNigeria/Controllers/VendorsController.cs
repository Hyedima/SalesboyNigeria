using SalesboyNigeria.Models;
using SalesboyNigeria.setup;
using SendGrid.Helpers.Mail;
using SendGrid;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Data;
using SalesboyNigeria.Models;
using SalesboyNigeria.setup;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace SalesboyNigeria.Controllers
{
    [CheckAuthentication]
    public class VendorsController : Controller
    {
        private salesboyEntities db = new salesboyEntities();
        // GET: Vendors
        
        public ActionResult Index(string id)
        {
            var result = (from usr in db.UserAccounts
                        where usr.Id == id
                        select usr
                        ).Take(1);
            return View(result); 
        }
       
        //login
        //public ActionResult login()
        //{
        //    return View();
        //}
        //[HttpPost]
        //public ActionResult Login(string email, string password, string ReturnUrl)
        //{
        //    try
        //    {
        //        var User = db.Vendors.FirstOrDefault(u => u.Email == email);
        //        if (User != null)
        //        {
        //            string clearpassword = SalesboyNigeria.setup.CryptoEngine.Decrypt(User.PasswordHash);
        //            if (password == clearpassword)
        //            {
        //                FormsAuthentication.SetAuthCookie(email, true);
        //                HttpCookie loginCookie = new HttpCookie("login");
        //                loginCookie.Values["userid"] = CryptoEngine.Encrypt(User.Id);
        //                loginCookie.Values["email"] = CryptoEngine.Encrypt(User.Email);
        //                loginCookie.Values["usertype"] = CryptoEngine.Encrypt(User.usertype);
        //                loginCookie.Path = Request.ApplicationPath;
        //                //Set the Expiry date.
        //                loginCookie.Expires = DateTime.Now.AddDays(7);
        //                //Add the Cookie to Browser.
        //                Response.Cookies.Add(loginCookie);

        //                Session["userid"] = User.Id.ToString();
        //                Session["email"] = User.Email.ToString();
        //                Session["usertype"] = User.usertype;
        //                //Session["branchid"] = User.branchid;

        //                TempData["success"] = "true";
        //                TempData["message"] = "Logged in Successfully.";

        //                return RedirectToAction("Index", "Home");
        //            }
        //            else
        //            {
        //                TempData["success"] = "false";
        //                TempData["message"] = "Login failed, please review the fields and try again."; // err.Message
        //                return View();
        //            }
        //        }
        //        else
        //        {
        //            TempData["success"] = "false";
        //            TempData["message"] = "Login failed, please review the fields and try again."; // err.Message
        //            return View();
        //        }
        //    }
        //    catch (Exception err)
        //    {
        //        TempData["success"] = "false";
        //        TempData["message"] = "Login failed, please review the fields and try again." + err;
        //        return View();
        //    }
        //}
        //public ActionResult Logout()
        //{
        //    //Check if Cookie exists.
        //    if (Request.Cookies["login"] != null)
        //    {
        //        //Fetch the Cookie using its Key.
        //        HttpCookie nameCookie = Request.Cookies["login"];

        //        //Set the Expiry date to past date.
        //        nameCookie.Expires = DateTime.Now.AddDays(-1);

        //        //Update the Cookie in Browser.
        //        Response.Cookies.Add(nameCookie);
        //    }


        //    Session.Abandon();
        //    return RedirectToAction("Index", "Home");
        //}
        //public ActionResult Verify(string id)
        //{
        //    return View(db.Vendors.Find(id));
        //}
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult ProfilePicture(HttpPostedFileBase file, string id, string name)
        {
            try
            {
                string userid = Session["userid"].ToString();
                var user = db.Vendors.FirstOrDefault(p => p.Id == userid);
                if (file.ContentLength > 0)
                {
                    string extension = Path.GetExtension(file.FileName);
                    string _FileName = Path.GetFileName(file.FileName);
                    string folder = Server.MapPath("~/Content/Images/profile");

                    //check if directory exists
                    if (!Directory.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }
                    string _path = Path.Combine(folder, id + extension);
                    file.SaveAs(_path);
                    string pic = "/Content/Images/profile/" + id + extension;
                    user.photo = pic;
                }

                db.SaveChanges();
                TempData["success"] = "true";
                TempData["message"] = "Profile picture uploaded successfully!!";
                return RedirectToAction("Index", "Home");
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "picture upload failed!!, please try again. " + err.Message;

                string userid = Session["userid"].ToString();
                var user = db.Vendors.FirstOrDefault(p => p.Id == userid);
                return RedirectToAction("Index", "Home");
            }
        }
        public ActionResult updatelocation(string id)
        {
            return View();
        }
        [HttpPost]
        public JsonResult updatelocation(string id, string lat, string longi)
        {
            var user = db.Vendors.FirstOrDefault(p => p.Id == id);
            user.lat = lat;
            user.longi = longi;
            db.SaveChanges();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult VendorsPayment(string id, decimal amountpaid, string trnxid, string paid_by, string pay_email, string pay_phone, string pay_status, string ref_no, string gateway_ref, string currency) //paid, pay_date
        {
            string userid = Session["userid"].ToString().ToLower();
            var user = db.UserAccounts.Find(userid);
            user.paymentstatus = "PAID";
            user.paymentdate = DateTime.Now;
            user.duedate = DateTime.Now.AddDays(365);
            user.amountpaid = amountpaid;

            db.Payments.Add(new SalesboyNigeria.Models.Payment
            {
                id = id,
                name = paid_by,
                trnxid = trnxid,
                email = pay_email,
                phone = pay_phone,
                status = "PAID",
                paymenttype = "ONLINE",
                category = "SUBSCRIPTION",
                title = "Payment of annaul Shop Space on Salesboy Nigeria",
                userid = user.Id,
                amount = amountpaid,
                trnxdate = DateTime.Now,
                notes = "VENDOR SUBSCRIPTION Payment  on " + DateTime.Now + " Ref No: " + ref_no + " Gateway_ref: " + gateway_ref + " currency: " + currency,
                gatewayref = gateway_ref,
            });


            db.SaveChanges();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }
        public ActionResult PaymentRedirect(string id)
        {
            string status = Request.Params["status"];
            string tx_ref = Request.Params["tx_ref"];
            string transaction_id = Request.Params["transaction_id"];

            var result = (from usr in db.UserAccounts
                          where usr.Id == id
                          select usr
                        ).Take(1);
            return View(result);
        }
        public ActionResult myOrders(string id) 
        {
            return View(db.UserAccounts.Find(id));
        }
        public ActionResult MyPayments(string id)
        {
            return View(db.Payments.Where(p=>p.userid == id));
        }
    }
}