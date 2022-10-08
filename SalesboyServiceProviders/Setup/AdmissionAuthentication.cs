using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace SalesboyServiceProviders.Setup
{
    public class AdmissionAuthentication : FilterAttribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (filterContext.HttpContext.Session["userid"] == null)
            {
                filterContext.Result = new RedirectResult("/ServiceProviders/signin");
                //FormsAuthentication.SetAuthCookie(user.Username, user.RememberMe);
            }
        }
    }
}