﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;

namespace ProjectTest
{
    public partial class TutorEvaluation : System.Web.UI.Page
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
            Session["CurrentUserRole"] = (string)HttpContext.Current.Session["UserRole"];
            string session = (string)Session["CurrentUserRole"];
            if (session != "ADMIN  ")
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}