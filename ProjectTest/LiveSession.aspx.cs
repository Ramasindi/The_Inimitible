﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;

namespace ProjectTest
{
    public partial class LiveSession : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "t14CXupG4aZrZpq3ZzPPeq6Dbk4Nj9sZX0zrrO69",
            BasePath = "https://mind-academy-8357a-default-rtdb.firebaseio.com/"
        };
        //Client
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            //configuring client with the project credentials
            client = new FireSharp.FirebaseClient(config);
            Session["CurrentUser"] = (string)HttpContext.Current.Session["UserID"];
            if (client != null)
            {
                if (string.IsNullOrEmpty(Session["CurrentUser"] as string))
                {
                    Response.Redirect("Login.aspx");
                }
                HtmlGenericControl sessionlink = Master.FindControl("liveSession") as HtmlGenericControl;
                if (!string.IsNullOrEmpty(Session["CurrentUser"] as string))
                {
                    FirebaseResponse sub = client.Get("Subscriptions/" + Session["CurrentUser"].ToString());
                    if (sub.Body != "null")
                    {
                        Subscription subscription = sub.ResultAs<Subscription>();
                        if(subscription.plan == "Basic")
                        {
                            //enable features
                        }
                        else if(subscription.plan == "Standard") 
                        {
                            //enable features
                        }
                        else
                        {
                            //enable features
                        }
                    }
                }
            }
        }
    }
}