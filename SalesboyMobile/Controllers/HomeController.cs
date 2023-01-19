using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SalesboyMobile.setup;

namespace SalesboyMobile.Controllers
{
    public class HomeController : Controller
    {
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
        public ActionResult splash()
        {
            return View();
        }
        public ActionResult landing()
        {
            return View();
        }
        [CheckAuthentication]
        public ActionResult settings()
        {
            return View();
        }
    }
}