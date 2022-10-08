using SendGrid;
using SendGrid.Helpers.Mail;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;

namespace SalesboyNigeria.setup
{
    public class EmailManager
    {
        //public static void AppSettings(out string UserID, out string Password, out string SMTPPort, out string Host)
        //{
        //    UserID = ConfigurationManager.AppSettings.Get("UserID");
        //    Password = ConfigurationManager.AppSettings.Get("Password");
        //    SMTPPort = ConfigurationManager.AppSettings.Get("SMTPPort");
        //    Host = ConfigurationManager.AppSettings.Get("Host");
        //}
        //public static void SendEmail(string From, string Subject, string Body, string To, string UserID, string Password, string SMTPPort, string Host)
        //{
        //    System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        //    mail.To.Add(To);
        //    mail.From = new MailAddress(From);
        //    mail.Subject = Subject;
        //    mail.Body = Body;
        //    SmtpClient smtp = new SmtpClient();
        //    smtp.Host = Host;
        //    smtp.Port = Convert.ToInt16(SMTPPort);
        //    smtp.Credentials = new NetworkCredential(UserID, Password);
        //    smtp.EnableSsl = true;
        //    smtp.Send(mail);
        //}
        //public static async Task SendMail(string From, string Subject, string Body, string To, string Name)
        //{
        //    var apiKey = ConfigurationManager.AppSettings.Get("sendGrid");//Environment.GetEnvironmentVariable("NAME_OF_THE_ENVIRONMENT_VARIABLE_FOR_YOUR_SENDGRID_KEY"); 
        //    var client = new SendGridClient(apiKey);
        //    var from = new EmailAddress(From, "SalesboyNigeria");
        //    var subject = Subject;
        //    var to = new EmailAddress(To, Name);
        //    var plainTextContent = "__";
        //    var htmlContent = Body;
        //    var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
        //    var response = await client.SendEmailAsync(msg);
        //    //Console.WriteLine(response.Body.ToString());
        //}
        public static async Task SendMail(string To_Mail, string To_Name,string subject,  string body )
        {
            var apiKey = "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";//Environment.GetEnvironmentVariable("NAME_OF_THE_ENVIRONMENT_VARIABLE_FOR_YOUR_SENDGRID_KEY");
            var client = new SendGridClient(apiKey);
            var from = new EmailAddress("Codeicontechnologies@gmail.com", "Example User");
            //var subject = "Sending with SendGrid is Fun";
            var to = new EmailAddress(To_Mail, To_Name);
            var plainTextContent = body;
            var htmlContent = "<strong>Salesboy Nigeria</strong>";
            var msg = MailHelper.CreateSingleEmail(from, to, subject, plainTextContent, htmlContent);
            var response = await client.SendEmailAsync(msg);
            //Console.WriteLine(response.Body.ToString());
        }

    }
}