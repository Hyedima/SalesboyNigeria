using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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
    }
}