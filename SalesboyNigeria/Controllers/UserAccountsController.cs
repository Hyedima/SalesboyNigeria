using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SalesboyNigeria.Models;
using System.Security.Authentication;
using SalesboyNigeria.setup;
using System.Threading.Tasks;
using SendGrid;
using SendGrid.Helpers.Mail;
using System.Web.Security;
using System.IO;
using SalesboyNigeria;
using System.Web.Helpers;
using System.Configuration;
using SalesboyNigeria.setup;

namespace Salesboy.Controllers
{
    public class UserAccountsController : Controller
    {
        private salesboyEntities db = new salesboyEntities();

        // GET: UserAccounts
        public ActionResult Index()
        {
            return View(db.UserAccounts.ToList());
        }

        // GET: UserAccounts/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UserAccount userAccount = db.UserAccounts.Find(id);
            if (userAccount == null)
            {
                return HttpNotFound();
            }
            return View(userAccount);
        }

        // GET: UserAccounts/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: UserAccounts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName")] UserAccount userAccount)
        {
            if (ModelState.IsValid)
            {
                db.UserAccounts.Add(userAccount);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(userAccount);
        }

        // GET: UserAccounts/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UserAccount userAccount = db.UserAccounts.Find(id);
            if (userAccount == null)
            {
                return HttpNotFound();
            }
            return View(userAccount);
        }

        // POST: UserAccounts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName")] UserAccount userAccount)
        {
            if (ModelState.IsValid)
            {
                db.Entry(userAccount).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(userAccount);
        }

        // GET: UserAccounts/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UserAccount userAccount = db.UserAccounts.Find(id);
            if (userAccount == null)
            {
                return HttpNotFound();
            }
            return View(userAccount);
        }

        // POST: UserAccounts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            UserAccount userAccount = db.UserAccounts.Find(id);
            db.UserAccounts.Remove(userAccount);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(  string email,string password, string cpassword)
        {
            //SendMail
            try
            {
                int cnt = db.UserAccounts.Where(p => p.Email == email).Count();

                string id = Guid.NewGuid().ToString();
                string newpass = SalesboyNigeria.setup.CryptoEngine.Encrypt(password);

                //check if user exist 
                if (cnt > 0)
                {
                    TempData["success"] = "false";
                    TempData["message"] = "User already exist, please review the fields and try again.";
                    return View();
                }
                else
                {
                    db.UserAccounts.Add(new UserAccount
                    {
                        Id = id,
                        firstname = "",// firstname,
                        lastname ="",// lastname,
                        Email = email,
                        phone = "",//phone,
                        state = "", //state,
                        PasswordHash = newpass,
                        usertype = "USER",
                        regdate = DateTime.Now,
                        country = "NIGERIA",
                        active = false,
                        TwoFactorEnabled = false,
                        PhoneNumberConfirmed = false,
                        EmailConfirmed = false,
                        UserName = email,
                        AccessFailedCount = 0
                    });
                    db.SaveChanges();
                    //send verification email
                    // await EmailManager.SendMail(email, firstname + " " + lastname, "Salesboy Nigeria Verifcation Email", "Your registrations was successfull, please click on this lick to continue <a href=''>Click Here</a>");
                    var apiKey = ConfigurationManager.AppSettings["SendGridKey"];//Environment.GetEnvironmentVariable("NAME_OF_THE_ENVIRONMENT_VARIABLE_FOR_YOUR_SENDGRID_KEY");
                    var client = new SendGridClient(apiKey);
                    var from = new EmailAddress("Salesboynigeria@gmail.com", "Salesboy Nigeria");
                    var subject = "Registrations Successful";
                    var to = new EmailAddress(email,email);
                    var plainTextContent = "Email Verification";
                    var htmlContent = "<strong>Your registration was successfull, please click on this link to continue <br /> <a class='btn btn-block btn-primary' href='https://salesboynigeria.com/useraccounts/verifyEmail/"+id+"'>Click Here</a></strong>";
                    var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
                    var response = await client.SendEmailAsync(msg);

                    TempData["success"] = "true";
                    TempData["message"] = "Registered Sucessfully.Please login to continue...";
                    return RedirectToAction("Login", "Useraccounts");
                    //return RedirectToAction("Verify", "Useraccounts", new { id = id });
                }
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Registration Failed, please review the entry and try again.";// + err.Message;
                return View();
            }
        }
       
        public ActionResult RegisterServiceProvider()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> RegisterServiceProvider(string firstname, string lastname, string email, string phone, string password) //string state, string agree,string businessname, string category, string description, string address
        {
            //SendMail
            try
            {
                int cnt = db.UserAccounts.Where(p => p.Email == email || p.phone == phone).Count();

                string id = Guid.NewGuid().ToString();
                string newpass = SalesboyNigeria.setup.CryptoEngine.Encrypt(password);

                //check if user exist 
                if (cnt > 0)
                {
                    TempData["success"] = "false";
                    TempData["message"] = "User already exist, please review the fields and try again.";
                    return View();
                }
                else
                {
                    db.UserAccounts.Add(new UserAccount
                    {
                        Id = id,
                        firstname = firstname,
                        lastname = lastname,
                        Email = email,
                        phone = phone,
                        //state = state,
                        PasswordHash = newpass,
                        usertype = "SHIPPER",
                        regdate = DateTime.Now,
                        country = "NIGERIA",
                        active = false,
                        TwoFactorEnabled = false,
                        PhoneNumberConfirmed = false,
                        EmailConfirmed = false,
                        UserName = email,
                        AccessFailedCount = 0
                    });
                    db.SaveChanges();
                    //send verification email
                    // await EmailManager.SendMail(email, firstname + " " + lastname, "Salesboy Nigeria Verifcation Email", "Your registrations was successfull, please click on this lick to continue <a href=''>Click Here</a>");
                    var apiKey = "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";//Environment.GetEnvironmentVariable("NAME_OF_THE_ENVIRONMENT_VARIABLE_FOR_YOUR_SENDGRID_KEY");
                    var client = new SendGridClient(apiKey);
                    var from = new EmailAddress("Salesboynigeria@gmail.com", "Salesboy Nigeria");
                    var subject = "Registrations Successfull";
                    var to = new EmailAddress(email, firstname + " " + lastname);
                    var plainTextContent = "Email Verification";
                    var htmlContent = "<strong>Your registration was successfull, please click on this link to continue <br /> <a class='btn btn-block btn-primary' href='https://salesboynigeria.com/useraccounts/verifyEmail/"+id+"'>Click Here</a></strong>";
                    var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
                    var response = await client.SendEmailAsync(msg);

                    TempData["success"] = "true";
                    TempData["message"] = "Registered Sucessfully.";
                    return RedirectToAction("Verify", "Useraccounts", new { id = id });
                }
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Registration Failed, please review the fields and try again." + err.Message;
                return View();
            }
        }

        //login
        public ActionResult login()
        {
            return View();
        }
        [HttpPost]
        public async Task<ActionResult> Login(string email, string password, string ReturnUrl)
        {
            try
            {
                var User = db.UserAccounts.FirstOrDefault(u => u.Email == email);
                if (User != null)
                {
                    string clearpassword = SalesboyNigeria.setup.CryptoEngine.Decrypt(User.PasswordHash);
                    if (password == clearpassword)
                    {
                        FormsAuthentication.SetAuthCookie(email, true);
                        HttpCookie loginCookie = new HttpCookie("login");
                        loginCookie.Values["userid"] = CryptoEngine.Encrypt(User.Id);
                        loginCookie.Values["email"] = CryptoEngine.Encrypt(User.Email);
                        loginCookie.Values["usertype"] = CryptoEngine.Encrypt(User.usertype);
                        loginCookie.Path = Request.ApplicationPath;
                        //Set the Expiry date.
                        loginCookie.Expires = DateTime.Now.AddDays(7);
                        //Add the Cookie to Browser.
                        Response.Cookies.Add(loginCookie);

                        Session["userid"] = User.Id.ToString();
                        Session["email"] = User.Email.ToString();
                        Session["usertype"] = User.usertype;
                        //Session["branchid"] = User.branchid;

                        //send email login notification
                        EmailManager sendMail = new EmailManager();
                        await sendMail.SendMail(email, User.firstname + " " + User.lastname,  "<h1>Login successfully</h1>");
                        TempData["success"] = "true";
                        TempData["message"] = "Logged in Successfully.";
                        //
                        //if(ReturnUrl == null)
                        //{
                        //    return RedirectToAction("Index", "Home");
                        //}
                        //else
                        //{
                        //    return Redirect(ReturnUrl);
                        //}
                        //return RedirectToAction("myprofile", "UserAccounts");
                        if(User.usertype == "VENDOR")
                        {
                            //return RedirectToAction("Index", "Vendors", new {id = User.Id});
                            return RedirectToAction("Index", "Home");
                        }
                        else
                        {
                            return RedirectToAction("Index", "Home");
                        }
                    }
                    else
                    {
                        TempData["success"] = "false";
                        TempData["message"] = "Login failed, please review the fields and try again."; // err.Message
                        return View();
                    }
                }
                else
                {
                    TempData["success"] = "false";
                    TempData["message"] = "Login failed, please review the fields and try again."; // err.Message
                    return View();
                }
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Login failed, please review the fields and try again." + err;
                return View();
            }
        }
        public ActionResult Logout()
        {
            HttpCookie loginCookie = new HttpCookie("login");
            loginCookie.Values["userid"] = null;
            loginCookie.Values["email"] = null;
            loginCookie.Values["usertype"] = null;
            loginCookie.Path = Request.ApplicationPath;
            //Set the Expiry date.
            loginCookie.Expires = DateTime.Now.AddDays(-1);
            //Add the Cookie to Browser.
            Response.Cookies.Remove(loginCookie.Name);

            Session.Abandon();
            return RedirectToAction("Login");
        }
        public ActionResult Verify(string id)
        {
            return View(db.UserAccounts.Find(id));
        }
        public ActionResult VerifyEmail(string id)
        {
            return View(db.UserAccounts.Find(id));
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult VerifyEmail(string email, string id)
        {
            try
            {
                var us = db.UserAccounts.Find(id);
                us.EmailConfirmed = true;
                us.active = true;
                us.PhoneNumberConfirmed = true;
                us.regdate = DateTime.Now;
                db.SaveChanges();
                TempData["success"] = "true";
                TempData["message"] = "You have successfully verified your email, please login to continue.";
                return RedirectToAction("Login");
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Verification failed, please review the fields and try again." + err.Message;
                return View("VerifyEmail", new { id = id});
            }
        }
        public ActionResult VerifyPhone()
        {
            return View();
        }
        public ActionResult ResetPassword(string id)
        {
            return View(db.UserAccounts.Find(id));
        }
        [HttpPost]
        public ActionResult ResetPassword(string id, string password)
        {
            return View(db.UserAccounts.Find(id));
        }
        //user profile
        public ActionResult myprofile()
        {
            return View();
        }
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult ProfilePicture(HttpPostedFileBase file, string id, string name)
        {
            try
            {
                string userid = Session["userid"].ToString();
                var user = db.UserAccounts.FirstOrDefault(p => p.Id == userid);
                if (file.ContentLength > 0)
                {
                    string extension = Path.GetExtension(file.FileName);
                    string _FileName = Path.GetFileName(file.FileName);
                    string folder = Server.MapPath("~/Content/Images/profile");

                    //check if directory exists
                    if (!Directory.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }
                    string _path = Path.Combine(folder, id + extension);
                    file.SaveAs(_path);
                    string pic = "/Content/Images/profile/" + id + extension;
                    user.photo = pic;
                }

                db.SaveChanges();
                TempData["success"] = "true";
                TempData["message"] = "Profile picture uploaded successfully!!";
                
                if(user.usertype == "VENDOR")
                {
                    return RedirectToAction("VendorDashboard", "UserAccounts");

                }
                else
                    if (user.usertype == "SERVICE PROVIDER")
                {
                    return RedirectToAction("ServiceProviderDashboard", "UserAccounts");

                }
                else
                {
                    return RedirectToAction("myprofile", "UserAccounts");

                }
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "picture upload failed!!, please try again. " + err.Message;

                string userid = Session["userid"].ToString();
                var user = db.UserAccounts.FirstOrDefault(p => p.Id == userid);
                if (user.usertype == "VENDOR")
                {
                    return RedirectToAction("VendorDashboard", "UserAccounts");

                }
                else
                     if (user.usertype == "SERVICE PROVIDER")
                {
                    return RedirectToAction("ServiceProviderDashboard", "UserAccounts");

                }
                else
                {
                    return RedirectToAction("myprofile", "UserAccounts");

                }
            }
        }
        
        [HttpPost]
        public JsonResult payment(string id, decimal amountpaid, string trnxid, string paid_by, string pay_email, string pay_phone, string pay_status, string ref_no, string gateway_ref, string currency) //paid, pay_date
        {
            string userid = Session["userid"].ToString().ToLower();
            var user = db.UserAccounts.Find(userid);
            user.paymentstatus = "PAID";
            user.paymentdate = DateTime.Now;
            user.duedate = DateTime.Now; //.AddDays(365);
            user.amountpaid = amountpaid;

            db.Payments.Add(new SalesboyNigeria.Models.Payment
            {
                id = id,
                name = paid_by,
                trnxid = trnxid,
                email = pay_email,
                phone = pay_phone,
                status = "PAID",
                paymenttype = "ONLINE",
                category = "SALES",
                title = "Purchase of items", 
                userid = user.Id,
                amount = amountpaid,
                trnxdate = DateTime.Now,
                notes = "Sales Payment on "+ DateTime.Now+ ", Ref No: " + ref_no + " Gateway_ref: " + gateway_ref + " currency: " + currency,
                gatewayref = gateway_ref,
            });

            //Create order
            db.Orders.Add(new Order
            {
                id = GenerateID.GetID(),
                batchid = gateway_ref,
                useremail = pay_email,
                paymentid = gateway_ref,
                orderdate = DateTime.Now,
                IsShipping = "Fales",
                frieght = null,
                shipperid = null,
                insertdate = DateTime.Now.ToString(),
                customerid = userid,
                status = "Ordered",
                notes = "payment for items is don't, its now on the shipment process",
                customeremail = pay_email,
                paymentstatus = "PAID",
                Country = "NIGERIA",
                city = "ABUJA",
                shipmentaddress = "My home",
                zip = "100208",
                phone = pay_phone,
                landmark = ""
            });
            //Remove items from cart
            foreach (var item in db.Carts.Where(p => p.useremail == user.Email).ToList())
            {
                //cart items 
                db.Sales.Add(new Sale
                {
                    id = GenerateID.GetID(),
                    userid = userid,
                    email = user.Email,
                    productid = item.productid,
                    productname = item.Product.productname,
                    description = item.Product.description,
                    amountpaid = amountpaid, //total amount paid for all the items bought in this batch
                    qty = Convert.ToInt32(item.qty),
                    unitprice = Convert.ToDecimal(item.Product.price),
                    totalcost = Convert.ToDecimal(item.Product.price * item.qty),
                    discountperc = Convert.ToInt32(item.Product.discount),
                    discountamount = Convert.ToDecimal(item.discount),
                    insertdate = DateTime.Now
                });
                //delete item from cart
                db.Carts.Remove(db.Carts.Find(item.id));
            }
            db.SaveChanges();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }
        public ActionResult VendorDashboard()
        {
            return View();
        }
        public ActionResult ServiceProviderDashboard()
        {
            return View();
        }
        public ActionResult BussinessDetails(string id)
        {
            return View(db.UserAccounts.Find(id));
        }
        [HttpPost]
        public ActionResult BussinessDetails(string id,string businessname, string state, string city, string category,string description, string address)
        {
            try
            {
                var us = db.UserAccounts.Find(id);
                us.EmailConfirmed = true;
                us.active = true;
                us.PhoneNumberConfirmed = true;
                us.regdate = DateTime.Now;
                db.SaveChanges();
                TempData["success"] = "true";
                TempData["message"] = "You have successfully verified your email, please login to continue.";
                return RedirectToAction("Login");
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Verification failed, please review the fields and try again." + err.Message;
                return View("VerifyEmail", new { id = id });
            }
            return View(db.UserAccounts.Find(id));
        }
        public ActionResult RegisterVendor()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> RegisterVendor(string firstname, string lastname, string email, string phone, string password, string state) //string state, string agree, string businessname, string category, string description, string address
        {
            //SendMail
            try
            {
                int cnt = db.UserAccounts.Where(p => p.Email == email || p.phone == phone).Count();

                string id = Guid.NewGuid().ToString();
                string newpass = SalesboyNigeria.setup.CryptoEngine.Encrypt(password);

                //check if user exist 
                if (cnt > 0)
                {
                    TempData["success"] = "false";
                    TempData["message"] = "User already exist, please review the fields and try again.";
                    return View();
                }
                else
                {
                    //create user account
                    db.UserAccounts.Add(new UserAccount
                    {
                        Id = id,
                        firstname = firstname,
                        lastname = lastname,
                        Email = email,
                        phone = phone,
                        //state = state,
                        PasswordHash = newpass,
                        usertype = "VENDOR",
                        regdate = DateTime.Now,
                        country = "NIGERIA",
                        city = state,
                        active = false,
                        TwoFactorEnabled = false,
                        PhoneNumberConfirmed = false,
                        EmailConfirmed = false,
                        UserName = email,
                        AccessFailedCount = 0
                    });
                    db.SaveChanges();
                    //send verification email
                    // await EmailManager.SendMail(email, firstname + " " + lastname, "Salesboy Nigeria Verifcation Email", "Your registrations was successfull, please click on this lick to continue <a href=''>Click Here</a>");
                    var apiKey = "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";//Environment.GetEnvironmentVariable("NAME_OF_THE_ENVIRONMENT_VARIABLE_FOR_YOUR_SENDGRID_KEY");
                    var client = new SendGridClient(apiKey);
                    var from = new EmailAddress("Salesboynigeria@gmail.com", "Salesboy Nigeria");
                    var subject = "Registration Success";
                    var to = new EmailAddress(email, firstname + " " + lastname);
                    var plainTextContent = "Email Verification";
                    var htmlContent = "<strong>Your registration was successfull, please click on this link to continue <br /> <a class='btn btn-block btn-primary' href='https://salesboynigeria.com/useraccounts/verifyEmail/" + id + "'>Click Here</a></strong>";//" + id + "
                    var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
                    var response = await client.SendEmailAsync(msg);

                    TempData["success"] = "true";
                    TempData["message"] = "Registered Sucessfully.";
                    return RedirectToAction("Login", "Useraccounts", new { id = id });
                }
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Registration Failed, please review the fields and try again." + err;
                return View();
            }
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
