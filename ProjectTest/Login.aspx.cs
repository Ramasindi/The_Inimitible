using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTest
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["CurrentUser"] = (string)HttpContext.Current.Session["UserID"];

            if (!string.IsNullOrEmpty(Session["CurrentUser"] as string))
            {
                Response.Redirect("Profile.aspx");
            }
        }
    }
}