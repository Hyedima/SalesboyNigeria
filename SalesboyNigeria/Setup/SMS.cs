using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;

namespace SalesboyNigeria.setup
{

    public class SMS
    {
       /* private string username = "hyedimawaha@gmail.com";
        private string key = "d7d88aabcef9110d810d71ccbed506894c8f223d";
        private string sender = "DAMAKASUWA";
        private string message = "Tnx: Debit, Amount: 1000";
        private string recipient = "08137243528";*/
        private static HttpClient client = new HttpClient();

        private static async Task<string> GetSendSmsAsync(string path)
        {
            string responseStr = (string)null;
            HttpResponseMessage async = await SMS.client.GetAsync(path);
            if (async.IsSuccessStatusCode)
                responseStr = await async.Content.ReadAsStringAsync();
            return responseStr;
        }

        private static string ShowResult(string result) => result;

        public void sendSMS(string message, string recipient) => SMS.RunAsync("hyedimawaha@gmail.com", "d7d88aabcef9110d810d71ccbed506894c8f223d", "PenResUni", message, recipient).Wait();

        private static async Task<string> RunAsync(
          string username,
          string key,
          string sender,
          string message,
          string recipient)
        {
            try
            {
                return await SMS.GetSendSmsAsync("http://api.ebulksms.com:8080/sendsms?username=" + username + "&apikey=" + key + "&sender=" + sender + "&messagetext=" + message + "&flash=0&recipients=" + recipient);
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
    }
}