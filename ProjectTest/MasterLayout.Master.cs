using System;
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
    public partial class Home : System.Web.UI.MasterPage
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
            liveSession.Visible = false;
            if (string.IsNullOrEmpty(Session["CurrentUser"] as string))
            {
                CartInfo.Visible = false;
                registerMyAcc.Visible = true;
                loginMyAcc.Visible = true;
                loginDivMyAcc.Visible = true;
                logoutMyAcc.Visible = false;
                logoutDivMyAcc.Visible = false;
                profileMyAcc.Visible = false;
                profileDivMyAcc.Visible = false;
                tutProfileDiv.Visible = false;
                tutProfile.Visible = false;
                tutEvalDiv.Visible = false;
                tutEval.Visible = false;
                invoices.Visible = false;
                invoicesDiv.Visible = false;
                tutorials.Visible = false;
                searchDiv.Visible = false;
                search.Visible = false;
            }
            else
            {
                registerMyAcc.Visible = false;
                loginMyAcc.Visible = false;
                loginDivMyAcc.Visible = false;
                logoutDivMyAcc.Visible = false;

                FirebaseResponse sub =  client.Get("Subscriptions/" + Session["CurrentUser"].ToString());
                if (sub.Body != "null")
                {
                    //HtmlGenericControl cartItems = Master.FindControl("cartItems") as HtmlGenericControl;
                    //HtmlGenericControl cartlabel = Master.FindControl("sub") as HtmlGenericControl;

                    Subscription existingSub = sub.ResultAs<Subscription>();
                    if (existingSub.endDate >= DateTime.Today)
                    {
                        cartItems.Visible = false;
                        subu.InnerText = existingSub.plan;
                        liveSession.Visible = true;
              
                    }
                    else
                    {
                        //UPDATE STATUS TO INACTIVE
                        sub = client.Set("Subscriptions/" + Session["CurrentUser"].ToString() + "/status", "InActive");
                        cartItems.Visible = false;
                        subu.InnerText = "InActive";
                        tutorials.Visible = false;
                        searchDiv.Visible = false;
                        search.Visible = false;
                    }
                }
                else
                {
                    tutorials.Visible = false;
                    FirebaseResponse cart = client.Get("Carts/" + Session["CurrentUser"].ToString());
                    if (cart.Body != "null")
                    {
                        cartItems.InnerText = "1";
                    }
                    else
                    {
                        cartItems.InnerText = "0";
                    }
                }
                if (Session["CurrentUserRole"] as string == "TUTOR  ")
                {
                    FirebaseResponse tut = client.Get("Tutors/" + Session["CurrentUser"].ToString());
                    CartInfo.Visible = true;
                    cartItems.Visible = false;
                    services.Visible = false;
                    searchDiv.Visible = false;
                    search.Visible = false;
                    if (tut.Body != "null")
                    {
                        
                        UserInfo u = tut.ResultAs<UserInfo>();
                        if (u.status == null)
                        {
                            CartInfo.Visible = false;
                        }
                        subu.InnerText = u.status;//check approval
                        if (u.status == "Pending")
                        {
                            liveSession.Visible = false;
                        }
                        else {
                            liveSession.Visible = true;
                        }
                        
                    }
                    else
                    {
                        subu.InnerText = "Pending";
                    }
                    tutProfileDiv.Visible = false;
                    tutProfile.Visible = false;
                    tutEvalDiv.Visible = false;
                    tutEval.Visible = false;
                    invoices.Visible = false;
                    invoicesDiv.Visible = false;
                    tutorials.Visible = false;
                }
                if (Session["CurrentUserRole"] as string == "STUDENT")
                {
                    tutProfileDiv.Visible = false;
                    tutProfile.Visible = false;
                    tutEvalDiv.Visible = false;
                    tutEval.Visible = false;
                }
                if (Session["CurrentUserRole"].ToString() == "ADMIN  ") {
                    cartItems.Visible = false;
                    subu.InnerText = "ADMIN";
                    liveSession.Visible = true;
                    tutorials.Visible = true;
                }
               // CartInfo.Visible = true;
            }
        }
    }
 }