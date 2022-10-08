﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SalesboyNigeria.setup;

namespace SalesboyNigeria.setup
{
    public class CheckAuthentication : FilterAttribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (filterContext.HttpContext.Request.Cookies["login"] == null)
            {
                filterContext.Result = new RedirectResult("/useraccounts/login");
            }
            else
            {
                var login = filterContext.HttpContext.Request.Cookies.Get("login");
                HttpContext.Current.Session["userid"] = CryptoEngine.Decrypt(login["userid"]);
                HttpContext.Current.Session["email"] = CryptoEngine.Decrypt(login["email"]);
                HttpContext.Current.Session["usertype"] = CryptoEngine.Decrypt(filterContext.HttpContext.Request.Cookies["login"]["usertype"]);

                //Session["email"] = login["email"].ToString();
                //string dd = filterContext.HttpContext.Request.Cookies["login"][""];
            }
        }
    }

}
