using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Intall Firesharp to use firebase in C#,
//Go to project, then choose Manage NuGet Packages, select brows tab and Search FireSharp.Serialization.JsonNet, istall the one that uses NewtonSoft
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using Newtonsoft.Json;

namespace ProjectTest
{
    public partial class Profile : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "t14CXupG4aZrZpq3ZzPPeq6Dbk4Nj9sZX0zrrO69",
            BasePath = "https://mind-academy-8357a-default-rtdb.firebaseio.com/"
        };
        //Client
        IFirebaseClient client;
        string loggedEmail;
        //When the page load the program will connect to the client
        protected void Page_Load(object sender, EventArgs e)
        {
            //configuring client with the project credentials
            client = new FireSharp.FirebaseClient(config);
            if (client != null)
            {              
                Session["CurrentUser"] = (string)HttpContext.Current.Session["UserID"];
                if (string.IsNullOrEmpty(Session["CurrentUser"] as string))
                {
                    Response.Redirect("Login.aspx");
                }
                Session["CurrentUserRole"] = (string)HttpContext.Current.Session["UserRole"];
                Session["CurrentUserEmail"] = (string)HttpContext.Current.Session["UserEmail"];
                Urole.InnerText = Session["CurrentUserRole"].ToString();
                if (!string.IsNullOrEmpty(Session["CurrentUser"] as string))
                {
                    if (!IsPostBack)
                    {
                        FirebaseResponse User;
                        FirebaseResponse Card;
                        if (Session["CurrentUserRole"].ToString() == "STUDENT")
                        {
                            //student details
                            User = client.Get("Students/" + Session["CurrentUser"].ToString());
                            if (User.Body != "null")
                            {
                                UserInfo user = User.ResultAs<UserInfo>();
                                userEmail.Value = Session["CurrentUserEmail"].ToString();
                                loggedEmail = Session["CurrentUserEmail"].ToString();
                                if (!string.IsNullOrEmpty(Session["CurrentUserRole"] as string))
                                {
                                    if (user.firstname != null)
                                        userFirstname.Value = user.firstname;
                                    // detailsDiv.Visible = false;
                                    //TODO: IF USER HAVENT SET UP ACCOUNT DISPLAY A MESSAGE ALERTING
                                    if (user.surname != null)
                                        userSurname.Value = user.surname;
                                    if (user.dob != null)
                                    {
                                        userdob.Attributes.Add("value", user.dob.ToString("yyyy-MM-dd"));
                                    }
                                    else {
                                        userdob.Attributes.Add("value", user.dob.ToString("2000-01-01"));
                                    }
                                    if (user.gender != null)
                                        userGender.Value = user.gender;
                                    if (user.grade != null)
                                        userGrade.Value = user.grade.ToString();
                                    if (user.schoolname != null)
                                        schoolname.Value = user.schoolname;
                                    if (user.contact != null)
                                        contact.Value = user.contact.ToString();
                                }

                            }
                            else
                            {
                                status.InnerHtml = "<div class='alert alert-success'><strong> Info! </strong > No Prifile Details FOUND!</a>.</div>";
                            }
                            //student Card details
                            Card = client.Get("Cards/" + Session["CurrentUser"].ToString());
                            string displayC = "";
                            if (Card.Body != "null")
                            {
                                var json = Card.Body;
                                Dictionary<string, CardDetail> elist = JsonConvert.DeserializeObject<Dictionary<string, CardDetail>>(json);
                                foreach (KeyValuePair<string, CardDetail> card in elist)
                                {
                                    displayC += "<br/><div class='card bg-light text-dark'><div class='card-body' style='display: grid; grid: auto/ auto auto auto auto;'>" +
                                        "<div class='item1'><img class='img-fluid' loading='eager' alt='card' src='https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fcard.jpg?alt=media&token=3d365d2d-241f-44df-8f4f-5e97f882c9c6'/>" +
                                        "</div><div class='item2'><h6>Card Number </h6><p>"+ string.Format("************{0}", card.Value.cardNumber.Trim().Substring(12, 4)) + "</p></div><div class='item3'><h6>Exp Date</h6><p>"+card.Value.CexpMonth+"/"+ card.Value.CexpYear+"</p></div>" +
                                        "<div class'item4'><h6>Name on Card</h6><p>"+card.Value.CardHolder+"</p>" +
                                        "<span style='cursor: pointer; float: right' class='badge badge-danger' name='remove' data-cuid='" + card.Value.Cuid + "'>Remove</span>" +
                                        "</div></div></div>";
                                }
                                displayCard.InnerHtml = displayC;
                            }
                            else {
                                displayCard.InnerHtml = "<h4> You haven't added a card yet, to add a new card, please click the Add Card button below </h4>";
                            }
                        }
                        else if (Session["CurrentUserRole"].ToString() == "ADMIN  ")
                        {
                            schoolHide.Visible = false;
                            usergradeHide.Visible = false;
                            openModal.Visible = false;
                            User = client.Get("Administrators/" + Session["CurrentUser"].ToString());
                            if (User.Body != "null")
                            {
                                UserInfo user = User.ResultAs<UserInfo>();
                                userEmail.Value = Session["CurrentUserEmail"].ToString();
                                loggedEmail = Session["CurrentUserEmail"].ToString();
                                if (!string.IsNullOrEmpty(Session["CurrentUserRole"] as string))
                                {
                                    if (user.firstname != null)
                                        userFirstname.Value = user.firstname;
                                    //detailsDiv.Visible = false;
                                    if (user.surname != null)
                                        userSurname.Value = user.surname;
                                    if (user.dob != null) { 
                                        userdob.Attributes.Add("value", user.dob.ToString("yyyy-MM-dd"));
                                    }
                                    else
                                    {
                                        userdob.Attributes.Add("value", user.dob.ToString("2000-01-01"));
                                    }
                                    if (user.gender != null)
                                        userGender.Value = user.gender;
                                    if (user.grade != null)
                                        userGrade.Value = user.grade.ToString();
                                    if (user.schoolname != null)
                                        schoolname.Value = user.schoolname;
                                    if (user.contact != null)
                                        contact.Value = user.contact.ToString();
                                }

                            }
                            else
                            {
                                status.InnerHtml = "<div class='alert alert-success'><strong> Info! </strong > No Prifile Details FOUND!</a>.</div>";
                            }
                        }
                        else {
                            Response.Redirect("TutorRegister.aspx");
                        }
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }

        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {
            status.InnerHtml = "<div class='alert alert-success'><strong> Success! </strong >" + UpdateUser() + "</a>.</div>";
        }

        private string UpdateUser()
        {
            //inserting a single record
            var userInfo = new UserInfo
            {
                firstname = userFirstname.Value,
                surname = userSurname.Value,
                gender = userGender.Value,
                contact = contact.Value.ToString(),
                dob = Convert.ToDateTime(userdob.Value),
                grade = userGrade.Value.ToString(),
                schoolname = schoolname.Value,
                email = Session["CurrentUserEmail"].ToString(),

            };
            string message = "";
            FirebaseResponse response;
            //User is the table name in the DB
            if (Session["CurrentUserRole"].ToString() == "STUDENT")
            {
                userInfo.role = "Student";
                response = client.Update("Students/" + Session["CurrentUser"].ToString(), userInfo);
                UserInfo result = response.ResultAs<UserInfo>();
                message = "Your " + result.role + " Details have been Updated!";
            }
            else if (Session["CurrentUserRole"].ToString() == "ADMIN  ")
            {
                userInfo.role = "Admin";
                response = client.Update("Administrators/" + Session["CurrentUser"].ToString(), userInfo);
                UserInfo result = response.ResultAs<UserInfo>();
                message = "Your " + result.role + " Details have been Updated!";
            }
            return message;
        }
    }
}