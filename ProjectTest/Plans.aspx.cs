using System;
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
    public partial class Plans : System.Web.UI.Page
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
            FirebaseResponse Plan;
            Plan = client.Get("Plans/");
            if (Plan.Body != null)
            {
                var json = Plan.Body;
                //PlanDetail plan = Plan.ResultAs<PlanDetail>();
                string display = "";
                Dictionary<string,PlanDetail> elist = JsonConvert.DeserializeObject<Dictionary<string, PlanDetail>>(json);
                foreach (KeyValuePair<string, PlanDetail> plan in elist)
                {
                    display +="<div class='col-lg-4'><div class='card bg-transparent px-4' ><h4 class='py-2'>"+ plan.Value.name + "</h4>" +
                    "<p class='py-3'>"+ plan.Value.aboutPlan + "</p><div class='block d-flex align-items-center'>" +
                    "<p class='pe-2'><i class='far fa-check-circle fa-1x'></i></p><p>"+ plan.Value.packageItem1 + "</p></div>" +
                    "<div class='block d-flex align-items-center'><p class='pe-2'><i class='far fa-check-circle fa-1x'></i></p><p>"+ plan.Value.packageItem2 + "</p></div>" +
                    "<div class='block d-flex align-items-center'><p class='pe-2'><i class='far fa-check-circle fa-1x'></i></p>" +
                    "<p>"+ plan.Value.packageItem3 + "</p></div><div class='block d-flex align-items-center'>" +
                    "<p class='pe-2'><i class='far fa-check-circle fa-1x'></i></p><p>"+ plan.Value.packageItem4 + "</p></div>" +
                    "<h4 class='py-3' id='planPrice' runat='server'>R" + plan.Value.price + "/Month</h4>" +
                    "<div class='my-3'><a class='btn' href='AboutPlan.aspx?plan="+ plan.Key+ "'>Purchase Plan</a></div></div>  </div>";
                }
                displayPlans.InnerHtml = display;
            }
        }
    }
}