using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SalesboyMobile.Models;
using SalesboyMobile.setup;

namespace SalesboyMobile.Controllers
{
    [CheckAuthentication]
    public class ProductsController : Controller
    {
        private salesboyEntities db = new salesboyEntities();

        // GET: Products
        public ActionResult Index()
        {
            var products = db.Products.Include(p => p.Vendor);
            return View(products.ToList());
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
            ViewBag.vendorid = new SelectList(db.Vendors, "Id", "firstname");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,vendorid,productname,producttype,description,bgphoto,photo1,photo2,photo3,photo4,photo5,photo6,category,tags,size1,size2,size3,size4,color1,color2,color3,color4,price,discount,status,qty,inserdate,modelno,brandname,otherfeatures")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.vendorid = new SelectList(db.Vendors, "Id", "firstname", product.vendorid);
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
            ViewBag.vendorid = new SelectList(db.Vendors, "Id", "firstname", product.vendorid);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,vendorid,productname,producttype,description,bgphoto,photo1,photo2,photo3,photo4,photo5,photo6,category,tags,size1,size2,size3,size4,color1,color2,color3,color4,price,discount,status,qty,inserdate,modelno,brandname,otherfeatures")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.vendorid = new SelectList(db.Vendors, "Id", "firstname", product.vendorid);
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
        // GET: Products/Details/5
        public ActionResult Viewproduct(string id)
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
        public ActionResult step1()
        {
            return View();
        }
        [HttpPost]
        public ActionResult step1(string name, string category,decimal amount, decimal discount, int qty)
        {
            return View();
        }
        public ActionResult step2(string id)
        {
            return View();
        }
        [HttpPost]
        public ActionResult step2(string tags, string description)
        {
            return View();
        }
        public ActionResult step3(string id)
        {
            return View();
        }
        [HttpPost]
        public ActionResult step3(string photo, string pic)
        {
            return View();
        }
        [CheckAuthentication]
        public JsonResult AddCart(string email, string productname, string productid, string qty, string ip, string price)
        {
            string id = GenerateID.GetID();
            var order = db.Carts.Where(c => c.useremail == email).Count();

            var prod = db.Carts.Where(p => p.productid == productid && p.useremail == email).ToList();
            if (prod.Count() > 0)
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
        public ActionResult cart()
        {
            return View();
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
