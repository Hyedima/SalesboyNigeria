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
using SalesboyServiceProviders.Models;
using SendGrid;
using SendGrid.Helpers.Mail;
using SalesboyServiceProviders.Setup;

namespace SalesboyServiceProviders.Controllers
{
    public class ServiceProvidersController : Controller
    {
        private salesboyEntities db = new salesboyEntities();

        // GET: ServiceProviders
        public ActionResult Index()
        {
            return View(db.ServiceProviders.ToList());
        }

        // GET: ServiceProviders/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ServiceProvider serviceProvider = db.ServiceProviders.Find(id);
            if (serviceProvider == null)
            {
                return HttpNotFound();
            }
            return View(serviceProvider);
        }

        // GET: ServiceProviders/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ServiceProviders/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordSalt,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,country,state,city,lat,longi,regdate,brandname,category,about,logo,tags,insertdate,status,notes,amountpaid,paymentdate,duedate,paymentstatus,SPtype,bg,photo")] ServiceProvider serviceProvider)
        {
            if (ModelState.IsValid)
            {
                db.ServiceProviders.Add(serviceProvider);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(serviceProvider);
        }

        // GET: ServiceProviders/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ServiceProvider serviceProvider = db.ServiceProviders.Find(id);
            if (serviceProvider == null)
            {
                return HttpNotFound();
            }
            return View(serviceProvider);
        }

        // POST: ServiceProviders/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,firstname,lastname,phone,usertype,address,active,Email,EmailConfirmed,PasswordSalt,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName,country,state,city,lat,longi,regdate,brandname,category,about,logo,tags,insertdate,status,notes,amountpaid,paymentdate,duedate,paymentstatus,SPtype,bg,photo")] ServiceProvider serviceProvider)
        {
            if (ModelState.IsValid)
            {
                db.Entry(serviceProvider).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(serviceProvider);
        }

        // GET: ServiceProviders/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ServiceProvider serviceProvider = db.ServiceProviders.Find(id);
            if (serviceProvider == null)
            {
                return HttpNotFound();
            }
            return View(serviceProvider);
        }

        // POST: ServiceProviders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            ServiceProvider serviceProvider = db.ServiceProviders.Find(id);
            db.ServiceProviders.Remove(serviceProvider);
            db.SaveChanges();
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
                int cnt = db.ServiceProviders.Where(p => p.Email == email || p.phone == phone).Count();

                string id = Guid.NewGuid().ToString();
                string newpass = SalesboyServiceProviders.Setup.CryptoEngine.Encrypt(password);

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
                    db.ServiceProviders.Add(new ServiceProvider
                    {
                        Id = id,
                        firstname = firstname,
                        lastname = lastname,
                        Email = email,
                        phone = phone,
                        //state = state,
                        PasswordHash = newpass,
                        usertype = "SERVICE PROVIDER",
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
                    return RedirectToAction("Verify", "ServiceProviders", new { id = id });
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
                var User = db.ServiceProviders.FirstOrDefault(u => u.Email == email);
                if (User != null)
                {
                    string clearpassword = SalesboyServiceProviders.Setup.CryptoEngine.Decrypt(User.PasswordHash);
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
            return View(db.ServiceProviders.Find(id));
        }
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult ProfilePicture(HttpPostedFileBase file, string id, string name)
        {
            try
            {
                string userid = Session["userid"].ToString();
                var user = db.ServiceProviders.FirstOrDefault(p => p.Id == userid);
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
                return RedirectToAction("Index", "Home");
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "picture upload failed!!, please try again. " + err.Message;

                string userid = Session["userid"].ToString();
                var user = db.ServiceProviders.FirstOrDefault(p => p.Id == userid);
                return RedirectToAction("Index", "Home");
            }
        }

        [HttpPost]
        public JsonResult payment(string id, decimal amountpaid, string trnxid, string paid_by, string pay_email, string pay_phone, string pay_status, string ref_no, string gateway_ref, string currency) //paid, pay_date
        {
            string userid = Session["userid"].ToString().ToLower();
            var user = db.ServiceProviders.Find(userid);
            user.paymentstatus = "PAID";
            user.paymentdate = DateTime.Now;
            user.duedate = DateTime.Now.AddDays(365);
            user.amountpaid = amountpaid;

            db.Payments.Add(new SalesboyServiceProviders.Models.Payment
            {
                id = id,
                name = paid_by,
                trnxid = trnxid,
                email = pay_email,
                phone = pay_phone,
                status = "PAID",
                userid = user.Id,
                amount = amountpaid,
                trnxdate = DateTime.Now,
                notes = "Ref No: " + ref_no + " Gateway_ref: " + gateway_ref + " currency: " + currency,
                gatewayref = gateway_ref,
            });

            db.SaveChanges();
            return Json("Success", JsonRequestBehavior.AllowGet);
        }
        
             [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult ServicePicture(HttpPostedFileBase file, string id, string name)
        {
            try
            {
                int rand = new Random().Next(1, 40000);
                string userid = Session["userid"].ToString();
                var user = db.ServiceProviders.FirstOrDefault(p => p.Id == userid);
                if (file.ContentLength > 0)
                {
                    string extension = Path.GetExtension(file.FileName);
                    string _FileName = Path.GetFileName(file.FileName);
                    string folder = Server.MapPath("~/Content/Images/services");

                    //check if directory exists
                    if (!Directory.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }
                    string _path = Path.Combine(folder, id+"-"+rand + extension);
                    file.SaveAs(_path);
                    string pic = "/Content/Images/services/" + id + extension;
                    user.photo = pic;
                }

                db.SaveChanges();
                TempData["success"] = "true";
                TempData["message"] = "Servivices picture uploaded successfully!!";
                return RedirectToAction("Index", "Home");
            }
            catch (Exception err)
            {
                TempData["success"] = "false";
                TempData["message"] = "Upload failed!!, please try again. " + err.Message;

                string userid = Session["userid"].ToString();
                var user = db.ServiceProviders.FirstOrDefault(p => p.Id == userid);
                return RedirectToAction("Index", "Home");
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
