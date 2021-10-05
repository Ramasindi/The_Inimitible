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
    public partial class AboutPlan : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "t14CXupG4aZrZpq3ZzPPeq6Dbk4Nj9sZX0zrrO69",
            BasePath = "https://mind-academy-8357a-default-rtdb.firebaseio.com/"
        };
        //Client
        IFirebaseClient client;
        string currentPlan = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //configuring client with the project credentials
            client = new FireSharp.FirebaseClient(config);
            Session["CurrentUser"] = (string)HttpContext.Current.Session["UserID"];

            if (!string.IsNullOrEmpty(Session["CurrentUser"] as string))
            {
                FirebaseResponse sub = client.Get("Subscriptions/" + Session["CurrentUser"].ToString());
                if (sub.Body != "null")
                {
                    Subscription existingSub = sub.ResultAs<Subscription>();
                    if (existingSub.endDate >= DateTime.Today)
                    {
                        AddToCart.Visible = false;
                    }
                }
                if (Request.Params["plan"]!=null)
                {                    
                        FirebaseResponse Plan;
                        Plan = client.Get("Plans/"+ Request.Params["plan"]);
                        currentPlan = Request.Params["plan"];
                        if (!string.IsNullOrEmpty(Plan.Body))
                        {
                            PlanDetail plan = Plan.ResultAs<PlanDetail>();
                            planName.InnerText = plan.name;
                            planPrice.InnerText =  "R" +plan.price + "/Month";
                            planDes.InnerText = plan.aboutPlan;
                            packItem1.InnerText = plan.packageItem1;
                            packItem2.InnerText = plan.packageItem2;
                            packItem3.InnerText = plan.packageItem3;
                            packItem4.InnerText = plan.packageItem4;
                            planImage.InnerHtml = " <img class='img-fluid d-none d-lg-block' src='" + plan.image + "'alt='login'>";
                        }
                }
            }
            else
            {
                if (Request.Params["plan"] != null)
                {
                    Response.Redirect("Login.aspx?plan="+ Request.Params["plan"]);
                }
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            Session["CurrentUserRole"] = (string)HttpContext.Current.Session["UserRole"];
            string session = (string)Session["CurrentUserRole"];
            if (session == "TUTOR  ")
            {
                Response.Redirect("Home.aspx");
            }
            var myCart = new Shoppingcart
            {
                checkout = false,
                plan = currentPlan
            };
            FirebaseResponse cart = client.Get("Carts/" + Session["CurrentUser"].ToString());
            if (cart.Body != "null")
            {
                Shoppingcart c = cart.ResultAs<Shoppingcart>();
                string cartPlan = c.plan;
                if (c.plan == currentPlan)
                {
                    Response.Redirect("Cart.aspx?plan=" + currentPlan);
                }
                else
                {
                    cartplan.InnerText = cartPlan + " Plan";
                    subscription.InnerText = currentPlan + " Plan";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);                  
                }
                
            }
            else
            {
                FirebaseResponse response;
                response = client.Set("Carts/" + Session["CurrentUser"].ToString(), myCart);
                Response.Redirect("Cart.aspx?plan=" + currentPlan);
                
            }
            
        }
    }
}