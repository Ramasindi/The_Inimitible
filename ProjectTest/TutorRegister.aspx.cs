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
    public partial class TutorProfile : System.Web.UI.Page
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
                    User = client.Get("Tutors/" + Session["CurrentUser"].ToString());
                    if (!string.IsNullOrEmpty(User.Body))
                    {
                        UserInfo user = User.ResultAs<UserInfo>();
                        userEmail.Value = Session["CurrentUserEmail"].ToString();
                        loggedEmail = Session["CurrentUserEmail"].ToString();
                        if (!string.IsNullOrEmpty(Session["CurrentUserRole"] as string))
                        {
                            if (user.firstname != null)
                                userFirstname.Value = user.firstname;
                            if (user.surname != null)
                                userSurname.Value = user.surname;
                            if (user.dob != null)
                            {
                                userdob.Attributes.Add("type", "text");
                                userdob.Value = user.dob.ToString("d");
                            }
                            if (user.gender != null)
                                userGender.Value = user.gender;
                            if (user.schoolname != null)
                                schoolname.Value = user.schoolname;
                            if (user.institution != null)
                                institution.Value = user.institution;
                            if (user.addressLine != null)
                                address1.Value = user.addressLine;
                            if (user.addressLine2 != null)
                                address2.Value = user.addressLine2;
                            if (user.city != null)
                                city.Value = user.city;
                            if (user.province != null)
                                province.Value = user.province;
                            if (user.onlineSession != null)
                                online.Value = user.onlineSession;
                            if (user.inPersonSession != null)
                                inPerson.Value = user.inPersonSession;
                            if (user.communication != null)
                                communication.Value = user.communication;
                            if (user.about != null)
                                aboutArea.Value = user.about;
                        }
                    }
                    else
                    {
                        status.InnerHtml = "<div class='alert alert-success'><strong> Info! </strong > No Profile Details FOUND!</a>.</div>";
                    }
                }
            }

        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {

            status.InnerHtml = "<div class='alert alert-success'><strong> Success! </strong >" + UpdateUser() + "</a>.</div>" +
                "<div class='loader'></div>";
            Response.Redirect("TutorProfile.aspx");
        }
        private string UpdateUser()
          {
            //inserting a single record
            var userInfo = new UserInfo
            {
                email = loggedEmail,
                firstname = userFirstname.Value,
                surname = userSurname.Value,
                gender = userGender.Value,
                contact = contact.Value.ToString(),
                dob = Convert.ToDateTime(userdob.Value),
                schoolname = schoolname.Value,
                institution = institution.Value,
                addressLine = address1.Value,
                addressLine2 = address2.Value,
                city = city.Value,
                province = province.Value,
                onlineSession = online.Value,
                inPersonSession = inPerson.Value,
                communication = communication.Value,
                about = aboutArea.Value,
              };
              string message = "";
              FirebaseResponse response;
            //User is the table name in the DB
            /*              if (Session["CurrentUserRole"].ToString() == "STUDENT")
                          {
                              userInfo.role = "Student";
                              response = client.Update("Students/" + Session["CurrentUser"].ToString(), userInfo);
                              UserInfo result = response.ResultAs<UserInfo>();
                              message = "Your " + result.role + " Details have been Updated!";
                          }*/
            if (Session["CurrentUserRole"].ToString() == "TUTOR  ")
              {
                  userInfo.role = "Tutor";
                  response = client.Set("Tutors/" + Session["CurrentUser"].ToString(), userInfo);
                  UserInfo result = response.ResultAs<UserInfo>();
                  message = "Your " + result.role + " Details have been Updated!";
             }
              /*else if (Session["CurrentUserRole"].ToString() == "ADMIN  ")
              {
                  userInfo.role = "Admin";
                  response = client.Update("Administrators/" + Session["CurrentUser"].ToString(), userInfo);
                  UserInfo result = response.ResultAs<UserInfo>();
                  message = "Your " + result.role + " Details have been Updated!";
              }*/


              return message;
          }
    }
}