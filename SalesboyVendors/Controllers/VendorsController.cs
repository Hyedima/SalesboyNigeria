using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using SalesboyVendors.Models;
using SalesboyVendors.Setup;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace SalesboyVendors.Controllers
{
    public class VendorsController : Controller
    {
        private salesboyEntities db = new salesboyEntities();

        // GET: Vendors
        public ActionResult Index()
        {
            return View(db.Vendors.ToList());
        }

        // GET: Vendors/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vendor vendor = db.Vendors.Find(id);
            if (vendor == null)
            {
                return HttpNotFound();
            }
            return View(vendor);
        }

        // GET: Vendors/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Vendors/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordSalt,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,country,state,city,lat,longi,regdate,brandname,category,about,logo,tags,insertdate,status,notes,amountpaid,paymentdate,duedate,paymentstatus,vendortype,bg,photo")] Vendor vendor)
        {
            if (ModelState.IsValid)
            {
                db.Vendors.Add(vendor);
                //db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(vendor);
        }

        // GET: Vendors/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vendor vendor = db.Vendors.Find(id);
            if (vendor == null)
            {
                return HttpNotFound();
            }
            return View(vendor);
        }

        // POST: Vendors/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordSalt,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,country,state,city,lat,longi,regdate,brandname,category,about,logo,tags,insertdate,status,notes,amountpaid,paymentdate,duedate,paymentstatus,vendortype,bg,photo")] Vendor vendor)
        {
            if (ModelState.IsValid)
            {
               // db.Entry(vendor).State = EntityState.Modified;
                //db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(vendor);
        }

        // GET: Vendors/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Vendor vendor = db.Vendors.Find(id);
            if (vendor == null)
            {
                return HttpNotFound();
            }
            return View(vendor);
        }

        // POST: Vendors/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Vendor vendor = db.Vendors.Find(id);
           // db.Vendors.Remove(vendor);
            //db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(string firstname, string lastname, string email, string phone, string password, string state) //string state, string agree, string businessname, string category, string description, string address
        {
            //SendMail
            try
            {
                int cnt = db.Vendors.Where(p => p.Email == email || p.phone == phone).Count();

                string id = Guid.NewGuid().ToString();
                string newpass = SalesboyVendors.Setup.CryptoEngine.Encrypt(password);

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
                    db.Vendors.Add(new Vendor
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
                    return RedirectToAction("Verify", "Vendors", new { id = id });
                }
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Registration Failed, please review the fields and try again." + err;
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
                var User = db.Vendors.FirstOrDefault(u => u.Email == email);
                if (User != null)
                {
                    string clearpassword = SalesboyVendors.Setup.CryptoEngine.Decrypt(User.PasswordHash);
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

                        return RedirectToAction("Index", "Home");
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
            //Check if Cookie exists.
            if (Request.Cookies["login"] != null)
            {
                //Fetch the Cookie using its Key.
                HttpCookie nameCookie = Request.Cookies["login"];

                //Set the Expiry date to past date.
                nameCookie.Expires = DateTime.Now.AddDays(-1);

                //Update the Cookie in Browser.
                Response.Cookies.Add(nameCookie);
            }


            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult Verify(string id)
        {
            return View(db.Vendors.Find(id));
        }
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult ProfilePicture(HttpPostedFileBase file, string id, string name)
        {
            try
            {
                string userid = Session["userid"].ToString();
                var user = db.Vendors.FirstOrDefault(p => p.Id == userid);
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
                return RedirectToAction("Index", "Vendors");
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "picture upload failed!!, please try again. " + err.Message;

                string userid = Session["userid"].ToString();
                var user = db.Vendors.FirstOrDefault(p => p.Id == userid);
                return RedirectToAction("Index", "Vendors");
            }
        }
        public ActionResult updatelocation(string id)
        {
            return View();
        }
        [HttpPost]
        public JsonResult updatelocation(string id, string lat, string longi)
        {
            var user = db.Vendors.FirstOrDefault(p => p.Id == id);
            user.lat = lat;
            user.longi = longi;
            db.SaveChanges();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }
        public ActionResult myOrders(string id)
        {
            return View(db.UserAccounts.Where(p=>p.Id == id));
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
