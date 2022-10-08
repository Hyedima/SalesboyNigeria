using SalesboyNigeria.setup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace SalesboyNigeria
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            //HttpCookie loginCookie = new HttpCookie("login");
            //loginCookie.Values["userid"] = CryptoEngine.Encrypt(User.Id);
            //loginCookie.Values["email"] = CryptoEngine.Encrypt(User.Email);
            //loginCookie.Values["usertype"] = CryptoEngine.Encrypt(User.usertype);
            //loginCookie.Path = HttpRequest.ApplicationPath;


            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
