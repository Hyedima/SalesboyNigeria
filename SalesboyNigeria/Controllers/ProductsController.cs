using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Microsoft.Ajax.Utilities;
using SalesboyNigeria.Models;
using SalesboyNigeria.setup;

namespace Salesboy.Controllers
{
    [CheckAuthentication]
    public class ProductsController : Controller
    {
        private salesboyEntities db = new salesboyEntities();

        // GET: Products
        public ActionResult Index()
        {
           // var products = db.Products.Include(p => p.Vendor);
            return View(); //products.ToList()
        }

        // GET: Products/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Products/Create
        public ActionResult Create()
        {
           // ViewBag.vendorid = new SelectList(db.Vendors, "id", "userid");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,vendorid,productname,producttype,description,bgphoto,photo1,photo2,photo3,photo4,photo5,photo6,category,tags,size1,size2,size3,size4,color1,color2,color3,color4,price,discount,status,qty,inserdate,modelno,brabdname,otherfeatures")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            //ViewBag.vendorid = new SelectList(db.Vendors, "id", "userid", product.vendorid);
            return View(product);
        }

        // GET: Products/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            //ViewBag.vendorid = new SelectList(db.Vendors, "id", "userid", product.vendorid);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,vendorid,productname,producttype,description,bgphoto,photo1,photo2,photo3,photo4,photo5,photo6,category,tags,size1,size2,size3,size4,color1,color2,color3,color4,price,discount,status,qty,inserdate,modelno,brabdname,otherfeatures")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //ViewBag.vendorid = new SelectList(db.Vendors, "id", "userid", product.vendorid);
            return View(product);
        }

        // GET: Products/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
            
        }
        //Dashboard
        public ActionResult Dashboard()
        {
            return View();
        }
        public ActionResult newProduct()
        {
            return View();
        }
       // [Authorize]
        [ValidateAntiForgeryToken]
        [HttpPost, ValidateInput(false)]
        public ActionResult newProduct(string producttype, string productname, string description, string category, string tags, int qty, decimal price, int discount, string modelno, string brandname, string otherfeatures)
        {
            try
            {
                string userid = Session["userid"].ToString();
                var user = db.UserAccounts.Find(userid);
                db.Products.Add(new Product
                {
                    id = Guid.NewGuid().ToString(),
                    vendorid = user.Id,
                    productname = productname,
                    producttype = producttype,
                    description = description,
                    category = category,
                    tags = tags,
                    qty = qty,
                    price = price,
                    modelno = modelno,
                    brandname = brandname,
                    otherfeatures = otherfeatures,
                    discount = discount,
                    inserdate = DateTime.Now,
                });
                db.SaveChanges();
                TempData["success"] = "true";
                TempData["message"] = "Profile picture uploaded successfully!!";
                return View();
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "picture upload failed!!, please try again. " + err;
                return View();
            }
        }
        //[ValidateAntiForgeryToken]
        //[HttpPost]
        //public ActionResult Uploadprofile(HttpPostedFileBase file, string id)
        //{
        //    try
        //    {
        //        var vend = db.Products.FirstOrDefault(p => p.id == id);
        //        if (file.ContentLength > 0)
        //        {
        //            string extension = Path.GetExtension(file.FileName);
        //            string _FileName = Path.GetFileName(file.FileName);
        //            string _path = Path.Combine(Server.MapPath("~/Content/Images/profile/"), id + extension);
        //            //check if directory exists
        //            if (!Directory.Exists(_path))
        //            {
        //                Directory.CreateDirectory(_path);
        //            }
        //            file.SaveAs(_path);
        //            vend.photo1 = id + extension;
        //        }
        //        db.SaveChanges();
        //        TempData["success"] = "true";
        //        TempData["message"] = "Profile picture uploaded successfully!!";
        //        return RedirectToAction("Vendors", vend);
        //    }
        //    catch (Exception err)
        //    {
        //        TempData["success"] = "false";
        //        TempData["message"] = "picture upload failed!!, please try again. " + err;
        //        return RedirectToAction("Alevel/" + id, "Admissions");
        //    }
        //}
        public ActionResult productPicture(string id)
        {
            return View(db.Products.Find(id));
        }
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult productPicture(HttpPostedFileBase file, string id, string name)
        {
            try
            {
                var vend = db.Products.FirstOrDefault(p => p.id == id);
                if (file.ContentLength > 0)
                {
                    string extension = Path.GetExtension(file.FileName);
                    string _FileName = Path.GetFileName(file.FileName);
                    string folder = Server.MapPath("~/Content/Images/" + id);

                    //check if directory exists
                    if (!Directory.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }

                    string _path = Path.Combine(folder, "photo" + name + extension);
                    file.SaveAs(_path);
                    string pic = "/Content/Images/" + id + "/photo" + name + extension;
                    if (name == "1")
                    {
                        vend.photo1 = pic;
                    }
                    else if (name == "2")
                    {
                        vend.photo2 = pic;
                    }
                    else if (name == "3")
                    {
                        vend.photo3 = pic;
                    }
                    else if (name == "4")
                    {
                        vend.photo4 = pic;
                    }
                    else if (name == "5")
                    {
                        vend.photo5 = pic;
                    }
                    else if (name == "bg")
                    {
                        vend.bgphoto = pic;
                    }
                }
                db.SaveChanges();
                TempData["success"] = "true";
                TempData["message"] = "Product picture uploaded successfully!!";
                return RedirectToAction("productPicture/" + id);
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "picture upload failed!!, please try again. " + err;
                return RedirectToAction("productPicture/" + id);
            }
        }
        public ActionResult productDetails(string id)
        {
            return View(db.Products.Find(id));
        }
        public ActionResult EditproductDetails(string id)
        {
            return View(db.Products.Find(id));
        }
        public ActionResult products()
        {
            string userid = Session["userid"].ToString();
            var user = db.UserAccounts.Find(userid);
            return View(db.Products.Where(p => p.vendorid == user.Id).ToList());
        }
        public ActionResult ProductList()
        {
            return View();
        }
        [Authorize]
        public ActionResult payment(string id)
        {
            return View(db.UserAccounts.Find(id));
        }
        //[ValidateAntiForgeryToken]
        //[Authorize]
        [HttpPost]
        public JsonResult payment(string id, decimal amountpaid, string trnxid, string paid_by, string pay_email, string pay_phone, string pay_status, string ref_no, string gateway_ref, string currency) //paid, pay_date
        {
            string userid = Session["userid"].ToString().ToLower();
            var user = db.UserAccounts.Find(userid);
            db.Payments.Add(new SalesboyNigeria.Models.Payment
            {
                id = id,
                name = paid_by,
                trnxid = trnxid,
                email = pay_email,
                phone = pay_phone,
                status = "PAID",
                userid = user.Id,
                amount = amountpaid,
                trnxdate = DateTime.Now,
                notes = "Ref No: " + ref_no + " Gateway_ref: " + gateway_ref + " currency: " + currency,
                gatewayref = gateway_ref,
            });
            //Remove items from cart
            foreach(var item in db.Carts.Where(p=>p.useremail == user.Email).ToList())
            {
                //cart items 
                db.Sales.Add(new Sale
                {
                    id = GenerateID.GetID(),
                    userid = userid,
                    email = user.Email,
                    productid = item.productid,
                    productname = item.Product.productname,
                    description = item.Product.description,
                    amountpaid = amountpaid, //total amount paid for all the items bought in this batch
                    qty = Convert.ToInt32(item.qty),
                    unitprice = Convert.ToDecimal(item.Product.price),
                    totalcost = Convert.ToDecimal(item.Product.price * item.qty),
                    discountperc = Convert.ToInt32(item.Product.discount),
                    discountamount = Convert.ToDecimal(item.discount),
                    insertdate = DateTime.Now
                });
                //delete item from cart
                db.Carts.Remove(db.Carts.Find(item.id));
            }
            db.SaveChanges();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }
        [CheckAuthentication]
        public JsonResult AddCart(string email, string productname, string productid, string qty, string ip, string price)
        {
            string id = GenerateID.GetID();
            var order = db.Carts.Where(c => c.useremail == email).Count();

            var prod = db.Carts.Where(p => p.productid == productid && p.useremail == email).ToList();
            if(prod.Count() > 0 )
            {
                prod.FirstOrDefault().qty += Convert.ToInt32(qty);
                db.SaveChanges();
                return Json(order, JsonRequestBehavior.AllowGet);
            }
            else
            {
                db.Carts.Add(new Cart
                {
                    id = id,
                    productid = productid,
                    useremail = email, 
                    userip = ip,
                    qty = Convert.ToInt32(qty),
                    discount = 0,
                    insertdate = DateTime.Now
                });
                db.SaveChanges();
              
                return Json(order, JsonRequestBehavior.AllowGet);
            }
        }
        //public JsonResult deleteCart(string id)
        //{
        //    db.Carts.Remove(db.Carts.FirstOrDefault(c => c.id == id));
        //    return Json("Success", JsonRequestBehavior.AllowGet);
        //}
        //public ActionResult deleteCart(string id)
        //{
        //    db.Carts.Remove(db.Carts.FirstOrDefault(c => c.id == id));
        //    db.SaveChanges();
        //    return View("Checkout");
        //}
        public ActionResult ShoppingCart()
        {
            return View();
        }
        public ActionResult Checkout()
        {
            return View();
        }
        public ActionResult Search(string text)
        {
            return View(db.Products.Where(p=>p.productname.Contains(text)).ToList());
        }
        public JsonResult deletecart(string id)
        {
            db.Carts.Remove(db.Carts.Find(id));
            db.SaveChanges();
            return Json("Succes", JsonRequestBehavior.AllowGet);
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();                                              
            }
            base.Dispose(disposing);
        }
    }
}
