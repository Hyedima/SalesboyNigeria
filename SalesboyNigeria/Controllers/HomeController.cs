using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PayStack.Net;
using SalesboyNigeria.setup;

namespace SalesboyNigeria.Controllers
{
    public class HomeController : Controller
    {
        private Models.salesboyEntities db = new Models.salesboyEntities();
        
        [CheckAuthentication]
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
        public ActionResult Privacy()
        {
            return View();
        }
        public ActionResult TermsandConditions()
        {
            return View();
        }
        public ActionResult ListServiceProviders()
        {
            return View();
        }
        public ActionResult DisputeResolutionPolicy()
        {
            return View();
        }
        [CheckAuthentication]
        public ActionResult Order()
        {
            return View();
        }
        [CheckAuthentication]
        [HttpPost]
        public ActionResult Order(string item, string amount, string userid)
        {
            db.EasyOrdersItem_temp.Add(new Models.EasyOrdersItem_temp
            {
                id = Guid.NewGuid().ToString(),
                item = item,
                amount = amount,
                insertuser = Session["userid"].ToString(),
                insertdate = DateTime.Now,
                status = "PENDING"
            });
            db.SaveChanges();
            return View();
        }
        public ActionResult findStores()
        {
            return View();
        }

    }
}