using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SalesboyNigeria.Controllers
{
    public class HomeController : Controller
    {
        private Models.salesboyEntities db = new Models.salesboyEntities();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
        public ActionResult Vendors()
        {
            return View();
        }
        public ActionResult ServiceProviders()
        {
            return View();
        }
        public ActionResult Vendor(string id)
        {
            var vendor = db.UserAccounts.Find(id);
            vendor.PasswordHash = "";
            vendor.PasswordSalt = "";
            return View(vendor);
        }
        public ActionResult ServiceProvider(string id)
        {
            var sp = db.UserAccounts.Find(id);
            sp.PasswordHash = "";
            sp.PasswordSalt = "";
            return View(sp);
        }
        public ActionResult Welcome()
        {
            return View();
        }
        public ActionResult testHome()
        {
            return View();
        }
    }
}