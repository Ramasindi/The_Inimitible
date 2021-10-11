using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
namespace ProjectTest
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "t14CXupG4aZrZpq3ZzPPeq6Dbk4Nj9sZX0zrrO69",
            BasePath = "https://mind-academy-8357a-default-rtdb.firebaseio.com/"
        };
        //Client
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {   //configuring client with the project credentials
            client = new FireSharp.FirebaseClient(config);
            Session["CurrentUserRole"] = (string)HttpContext.Current.Session["UserRole"];
            Session["CurrentUser"] = (string)HttpContext.Current.Session["UserID"];
            if (string.IsNullOrEmpty(Session["CurrentUser"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["CurrentUserRole"].ToString() == "TUTOR  ")
            {
                Response.Redirect("Home.aspx");
            }
            if (Session["CurrentUserRole"].ToString() != "ADMIN  ")
            {
                FirebaseResponse sub = client.Get("Subscriptions/" + Session["CurrentUser"].ToString());
                if (sub.Body == "null")
                {
                    Response.Redirect("Plans.aspx");
                }
                else
                {
                    Subscription existingSub = sub.ResultAs<Subscription>();
                    if (!(existingSub.endDate >= DateTime.Today))
                    {
                        Response.Redirect("Plans.aspx");
                    }
                }
            }
        }
    }
}