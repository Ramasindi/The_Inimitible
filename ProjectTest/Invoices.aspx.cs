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
    public partial class Invoices : System.Web.UI.Page
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
            Session["CurrentUserRole"] = (string)HttpContext.Current.Session["UserRole"];
            if (string.IsNullOrEmpty(Session["CurrentUser"] as string))
            {              
                Response.Redirect("Login.aspx");
            }
            if (Session["CurrentUserRole"].ToString() == "TUTOR  ")
            {
                Response.Redirect("Home.aspx");
            }
            if (Session["CurrentUserRole"].ToString() == "STUDENT")
            {
                FirebaseResponse invoices;
                invoices = client.Get("Invoices/" + Session["CurrentUser"].ToString());
                if (invoices.Body != "null")
                {
                    var json = invoices.Body;
                    string column = "";
                    string status;
                    Dictionary<string, invoiceDetails> elist = JsonConvert.DeserializeObject<Dictionary<string, invoiceDetails>>(json);
                    foreach (KeyValuePair<string, invoiceDetails> invoice in elist)
                    {
                        if (invoice.Value.endDate <= DateTime.Now.AddHours(2))
                        {
                            status = "Completed";
                        }
                        else
                        {
                            status = "Current";
                        }
                        column += "<tr><td> " + invoice.Value.email + " </td><td> " + invoice.Value.planName + "</td><td>R " + invoice.Value.pricePaid + " </td><td> " + invoice.Value.paymentMethod + " </td><td> " + invoice.Value.startDate.ToString("yyyy-MM-dd HH:mm") + " </td><td> " + invoice.Value.endDate.ToString("yyyy-MM-dd HH:mm") + " </td ><td> <button class='mdc-button mdc-button--raised'> <b style='color: goldenrod;'>" + status + "</b> </button></td></tr>";
                    }
                    tableColumn.InnerHtml = column;
                }
                else
                {
                    tableColumn.InnerHtml = "<h4>You currently have no any invoices to display. Once you purchase a Subscription your invoice detals will be displayed here. Thank you.</h4> <br />";

                }
            }
            else {//user is ADMIN
                FirebaseResponse invo;
                invo = client.Get("Invoices/");
                if (invo.Body != "null")
                {
                    var json = invo.Body;
                    string column = "";
                    string status;
                    Dictionary<string, invoiceDetails> elist = JsonConvert.DeserializeObject<Dictionary<string, invoiceDetails>>(json);
                    foreach (string i in elist.Keys)
                    {
                        invo = client.Get("Invoices/" + i);
                        Dictionary<string, invoiceDetails> list = JsonConvert.DeserializeObject<Dictionary<string, invoiceDetails>>(invo.Body);
                        foreach (KeyValuePair<string, invoiceDetails> invoice in list)
                        {
                            if (invoice.Value.endDate <= DateTime.Now.AddHours(2))
                            {
                                status = "Completed";
                            }
                            else
                            {
                                status = "Current";
                            }
                            column += "<tr><td> " + invoice.Value.email + " </td><td> " + invoice.Value.planName + "</td><td>R " + invoice.Value.pricePaid + " </td><td> " + invoice.Value.paymentMethod + " </td><td> " + invoice.Value.startDate.ToString("yyyy-MM-dd HH:mm") + " </td><td> " + invoice.Value.endDate.ToString("yyyy-MM-dd HH:mm") + " </td ><td> <button class='mdc-button mdc-button--raised'> <b style='color: goldenrod;'>" + status + "</b> </button></td></tr>";

                        }
                    }
                    tableColumn.InnerHtml = column;
                }
                else
                {
                    tableColumn.InnerHtml = "<h4>You currently have no any invoices to display. Once you purchase a Subscription your invoice detals will be displayed here. Thank you.</h4> <br />";

                }
            }
            
        }
    }
}