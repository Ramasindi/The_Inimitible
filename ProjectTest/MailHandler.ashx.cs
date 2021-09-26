using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using Newtonsoft.Json;

namespace ProjectTest
{
    /// <summary>
    /// Summary description for MailHandler
    /// </summary>
    public class MailHandler : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            HttpResponse response = context.Response;
            string jsonString = String.Empty;
            HttpContext.Current.Request.InputStream.Position = 0;
            using (System.IO.StreamReader inputStream = new System.IO.StreamReader(HttpContext.Current.Request.InputStream))
            {
                jsonString = inputStream.ReadToEnd();
                if (!string.IsNullOrEmpty(jsonString))//NULL OR EMPTY
                {
                    if (jsonString.StartsWith("LOGGEDOUT"))
                    {
                        context.Session["UserID"] = "";
                        context.Session["UserRole"] = "";
                        context.Session.Abandon();
                        response.StatusCode = 200;
                    }
                    else { 
                        context.Session["UserID"] = jsonString.Substring(0, 28);
                        context.Session["UserRole"] = jsonString.Substring(28, 7);//UID is a 29 Digit value, After 28[ROLE]
                        context.Session["UserEmail"] = jsonString.Substring(35);
                        response.StatusCode = 200;
                    }
                }
                else
                {

                    response.StatusCode = 404;
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}