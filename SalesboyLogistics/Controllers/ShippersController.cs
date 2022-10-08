using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using SalesboyLogistics.Models;
using SendGrid.Helpers.Mail;
using SendGrid;
using SalesboyLogistics.Setup;
using System.IO;
using System.Web.Security;

namespace SalesboyLogistics.Controllers
{
    public class ShippersController : Controller
    {
        private salesboyEntities db = new salesboyEntities();

        // GET: Shippers
        public ActionResult Index()
        {
            return View(db.Shippers.ToList());
        }

        // GET: Shippers/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Shipper shipper = db.Shippers.Find(id);
            if (shipper == null)
            {
                return HttpNotFound();
            }
            return View(shipper);
        }

        // GET: Shippers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Shippers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordSalt,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,country,state,city,lat,longi,regdate,brandname,category,about,logo,tags,insertdate,status,notes,amountpaid,paymentdate,duedate,paymentstatus,shippertype,bg,photo")] Shipper shipper)
        {
            if (ModelState.IsValid)
            {
                db.Shippers.Add(shipper);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(shipper);
        }

        // GET: Shippers/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Shipper shipper = db.Shippers.Find(id);
            if (shipper == null)
            {
                return HttpNotFound();
            }
            return View(shipper);
        }

        // POST: Shippers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordSalt,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,country,state,city,lat,longi,regdate,brandname,category,about,logo,tags,insertdate,status,notes,amountpaid,paymentdate,duedate,paymentstatus,shippertype,bg,photo")] Shipper shipper)
        {
            if (ModelState.IsValid)
            {
                db.Entry(shipper).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(shipper);
        }

        // GET: Shippers/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Shipper shipper = db.Shippers.Find(id);
            if (shipper == null)
            {
                return HttpNotFound();
            }
            return View(shipper);
        }

        // POST: Shippers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Shipper shipper = db.Shippers.Find(id);
            db.Shippers.Remove(shipper);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(string firstname, string lastname, string email, string phone, string password, string state, string agree)
        {
            //SendMail
            try
            {
                int cnt = db.UserAccounts.Where(p => p.Email == email || p.phone == phone).Count();

                string id = Guid.NewGuid().ToString();
                string newpass = SalesboyLogistics.Setup.CryptoEngine.Encrypt(password);

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
                        state = state,
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
                    var subject = "Registrations Successful";
                    var to = new EmailAddress(email, firstname + " " + lastname);
                    var plainTextContent = "Email Verification";
                    var htmlContent = "<strong>Your registration was successfull, please click on this link to continue <br /> <a class='btn btn-block btn-primary' href='https://salesboynigeria.com/useraccounts/verifyEmail/" + id + "'>Click Here</a></strong>";
                    var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
                    var response = await client.SendEmailAsync(msg);

                    TempData["success"] = "true";
                    TempData["message"] = "Registered Sucessfully.";
                    return RedirectToAction("Verify", "Shippers", new { id = id });
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
        public ActionResult Login(string email, string password, string ReturnUrl)
        {
            try
            {
                var User = db.UserAccounts.FirstOrDefault(u => u.Email == email);
                if (User != null)
                {
                    string clearpassword = SalesboyLogistics.Setup.CryptoEngine.Decrypt(User.PasswordHash);
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

                        TempData["success"] = "true";
                        TempData["message"] = "Logged in Successfully.";
                        return RedirectToAction("ShipperDashboard", "Shippers");
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
            Session.Abandon();
            return RedirectToAction("Index", "Home");
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
                return View("VerifyEmail", new { id = id });
            }
        }
        public ActionResult ShipperDashboard()
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
                return RedirectToAction("ShipperDashboard");
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "picture upload failed!!, please try again. " + err.Message;

                string userid = Session["userid"].ToString();
                var user = db.UserAccounts.FirstOrDefault(p => p.Id == userid);
                return RedirectToAction("ShipperDashboard", "Shippers");
                
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
