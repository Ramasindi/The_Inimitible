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
    public partial class Cart : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "t14CXupG4aZrZpq3ZzPPeq6Dbk4Nj9sZX0zrrO69",
            BasePath = "https://mind-academy-8357a-default-rtdb.firebaseio.com/"
        };
        //Client
        IFirebaseClient client;
        string currentPlan = "";
        string PriceR = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //configuring client with the project credentials
            client = new FireSharp.FirebaseClient(config);
            Session["CurrentUser"] = (string)HttpContext.Current.Session["UserID"];
            Session["CurrentUserEmail"] = (string)HttpContext.Current.Session["UserEmail"];
            if (string.IsNullOrEmpty(Session["CurrentUser"] as string))
            {
                Response.Redirect("Login.aspx");
            }
            Session["CurrentUserRole"] = (string)HttpContext.Current.Session["UserRole"];
            emptyCart.Visible = false;
            string session = (string)Session["CurrentUserRole"];
            if (session == "TUTOR  ")
            {
                Response.Redirect("TutorProfile.aspx");
            }
            
            else
            {
                if (!string.IsNullOrEmpty(Session["CurrentUserRole"] as string))
                {
                    FirebaseResponse Plan;
                    FirebaseResponse cart = client.Get("Carts/" + Session["CurrentUser"].ToString());
                    if (cart.Body != "null")
                    {
                        if (!string.IsNullOrEmpty(Request.Params["plan"]))
                        {//user used add to cart
                            currentPlan = Request.Params["plan"];

                               Plan = client.Get("Plans/" + Request.Params["plan"]);
                            if (Plan.Body != null)
                            {
                                PlanDetail plan = Plan.ResultAs<PlanDetail>();
                                name.InnerText = plan.name;
                                priceForPlan.InnerText = "R" + plan.price + "/Month";
                                packageItem1.InnerText = plan.packageItem1;
                                packageItem2.InnerText = plan.packageItem2;
                                packageItem3.InnerText = plan.packageItem3;
                                packageItem4.InnerText = plan.packageItem4;
                                price.InnerText = "R" + plan.price;
                                PriceR = "R" + plan.price;
                                items.InnerHtml = "<b>TOTAL:</b> 1 item";
                            }
                        }
                        else
                        {//user used cart button
                            cart = client.Get("Carts/" + Session["CurrentUser"].ToString());
                            
                            if (cart.Body != "null")
                            {
                                Shoppingcart cartplan = cart.ResultAs<Shoppingcart>();
                                currentPlan = cartplan.plan;
                                Plan = client.Get("Plans/" + currentPlan);
                                if (Plan.Body != "null")
                                {
                                    PlanDetail plan = Plan.ResultAs<PlanDetail>();
                                    name.InnerText = plan.name;
                                    priceForPlan.InnerText = "R" + plan.price + "/Month";
                                    packageItem1.InnerText = plan.packageItem1;
                                    packageItem2.InnerText = plan.packageItem2;
                                    packageItem3.InnerText = plan.packageItem3;
                                    packageItem4.InnerText = plan.packageItem4;
                                    price.InnerText = "R" + plan.price;
                                    PriceR = "R" + plan.price;
                                    items.InnerHtml = "<b>TOTAL:</b> 1 item";
                                }
                            }
                                    
                        }
                    }
                    else
                    {
                        emptyCart.Visible = true; Remove.Visible = false; price.InnerText = "R0"; items.InnerHtml = "<b>TOTAL:</b> 0 item"; ;
                    }
                }
               
            }
        }
        protected void remove_Click(object sender, EventArgs e)
        {
            removeCart();
        }

        protected void Checkout_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Today.AddMonths(1);
            dt.AddDays(30);
            var mySub = new Subscription
            {
                plan = currentPlan,
                status = "Active",
                paymentMethod = "Card",
                startDate = DateTime.Today,
                endDate = dt
            };

            FirebaseResponse sub = client.Get("Subscriptions/" + Session["CurrentUser"].ToString());
            if (sub.Body != "null")
            {
                Subscription existingSub = sub.ResultAs<Subscription>();
                if(existingSub.endDate >= DateTime.Today){
                                       
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    //TODO: GET PAYMENT METHOD AND COMPLETE TRANSACTION, THEN UPDATE NEW SUBSCRIPTION PLAN
                    FirebaseResponse cart = client.Get("Carts/" + Session["CurrentUser"].ToString());
                    if (cart.Body != "null")
                    {
                        sub = client.Update("Subscriptions/" + Session["CurrentUser"].ToString(), mySub);
                        cartplan.InnerText = currentPlan + " Plan";
                        subscriptionValid.InnerText = "" + DateTime.Today.AddMonths(1);
                        string EmailR = Session["CurrentUserEmail"].ToString();
                        string PlanR = currentPlan + " Plan";
                        string EndDateR = dt.ToString("dd MMMMM yyyy");
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Email", "sendReceipt('" + EmailR + "','" + PriceR + "','" + EndDateR + "','" + PlanR + "');", true);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "chekoutModal();", true);
                    }
                    else
                    {
                        Response.Redirect("Plans.aspx");
                    }
                }
                        
                
            }
            else
            {
                FirebaseResponse cart = client.Get("Carts/" + Session["CurrentUser"].ToString());
                if (cart.Body != "null")
                {                   
                    sub = client.Set("Subscriptions/" + Session["CurrentUser"].ToString(), mySub);


                    cartplan.InnerText = currentPlan + " Plan";
                    subscriptionValid.InnerText =  "" + DateTime.Today.AddMonths(1);
                    string EmailR = Session["CurrentUserEmail"].ToString();
                    string PlanR = currentPlan + " Plan";
                    string EndDateR = dt.ToString("dd MMMMM yyyy");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Email", "sendReceipt('"+EmailR+"','"+PriceR+"','"+EndDateR+"','"+PlanR+"');", true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "chekoutModal();", true);
                   
                }
                else
                {
                    Response.Redirect("Plans.aspx");
                }
                    
            }
           
            removeCart();
            HtmlGenericControl cartItems = Master.FindControl("cartItems") as HtmlGenericControl;
            cartItems.Visible = false;
            HtmlGenericControl cartlabel = Master.FindControl("subu") as HtmlGenericControl;
            cartlabel.InnerText = currentPlan;
        }
        private void removeCart()
        {
            FirebaseResponse response;
            response = client.Delete("Carts/" + Session["CurrentUser"].ToString());
            items.InnerHtml = "<b>TOTAL:</b> 0 item";
            price.InnerText = "R0";
            Remove.Visible = false;
            emptyCart.Visible = true;
        }
    }
}