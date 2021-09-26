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
                    FirebaseResponse User;
                    if (Session["CurrentUserRole"].ToString() == "STUDENT")
                    {
                        User = client.Get("Students/" + Session["CurrentUser"].ToString());
                        if (User.Body != null)
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
                                    userdob.Attributes.Add("type", "text");
                                userdob.Value = user.dob.ToString("d");
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
                    else if (Session["CurrentUserRole"].ToString() == "TUTOR  ")
                    {
                        User = client.Get("Tutors/" + Session["CurrentUser"].ToString());
                        if (User.Body != null)
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
                                if (user.dob != null)
                                    userdob.Attributes.Add("type", "text");
                                userdob.Value = user.dob.ToString("d");
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
                    else if (Session["CurrentUserRole"].ToString() == "ADMIN  ")
                    {
                        User = client.Get("Administrators/" + Session["CurrentUser"].ToString());
                        if (User.Body != null)
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
                                if (user.dob != null)
                                    userdob.Attributes.Add("type", "text");
                                userdob.Value = user.dob.ToString("d");
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
                email = loggedEmail,

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
            else if (Session["CurrentUserRole"].ToString() == "TUTOR  ")
            {
                userInfo.role = "Tutor";
                response = client.Set("Tutors/" + Session["CurrentUser"].ToString(), userInfo);
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