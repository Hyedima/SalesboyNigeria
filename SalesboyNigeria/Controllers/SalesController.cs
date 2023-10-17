using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SalesboyNigeria.Models;
using SalesboyNigeria.setup;

namespace SalesboyNigeria.Controllers
{
    public class SalesController : Controller
    {
        private salesboyEntities db =  new salesboyEntities();
        // GET: Sales
        public ActionResult Index()
        {
            return View();
        }

    }
}