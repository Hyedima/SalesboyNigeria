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

    }
}