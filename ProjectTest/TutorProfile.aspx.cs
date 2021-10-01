using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firebase.Storage;
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
                if (Session["CurrentUserRole"].ToString() == "STUDENT")
                {
                    Response.Redirect("Profile.aspx");
                }
                Session["CurrentUserEmail"] = (string)HttpContext.Current.Session["UserEmail"];
                Urole.InnerText = Session["CurrentUserRole"].ToString();
                userEmail.Value = Session["CurrentUserEmail"].ToString();
                if (!string.IsNullOrEmpty(Session["CurrentUser"] as string))
                {
                    FirebaseResponse User;
                    User = client.Get("Tutors/" + Session["CurrentUser"].ToString());
                    if (User.Body != "null")
                    {
                        UserInfo user = User.ResultAs<UserInfo>();
                        userEmail.Value = Session["CurrentUserEmail"].ToString();
                        loggedEmail = Session["CurrentUserEmail"].ToString();
                        if (!string.IsNullOrEmpty(Session["CurrentUserRole"] as string))
                        {
                            if (!IsPostBack) {
                                if (user.firstname != null)
                                    userFirstname.Value = user.firstname;
                                if (user.surname != null)
                                    userSurname.Value = user.surname;
                                if (user.dob != null)
                                    userdob.Attributes.Add("type", "text");
                                userdob.Value = user.dob.ToString("d");
                                if (user.contact != null)
                                    contact.Value = user.contact;
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
                                if (user.about != null)
                                    aboutArea.Value = user.about;
                            }
                        }

                    }
                    else
                    {
                        //status.InnerHtml = "<div class='alert alert-success'><strong> Info! </strong > No Profile Details FOUND!</a>.</div>";
                    }
                }
            }

        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {

            UpdateUser();
        }
        private async void UpdateUser()
         {
            //id
            var task1 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(idFile.PostedFile.FileName)
             .PutAsync(idFile.PostedFile.InputStream);
            var idFileLink = await task1;
            //matric   
            var task2 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(matric.PostedFile.FileName)
             .PutAsync(matric.PostedFile.InputStream);
            var matricFileLink = await task2;
            //transcript
            var task3 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(transcript.PostedFile.FileName)
             .PutAsync(transcript.PostedFile.InputStream);
            var transcriptFileLink = await task3;
            var otherFileLink = "";
            if (other.PostedFile.ContentLength != 0) { //we only upload it if it is provided
                //other
                var task4 = new FirebaseStorage("mind-academy-8357a.appspot.com")
                 .Child("data")
                 .Child("Docs")
                 .Child(Session["CurrentUser"].ToString())
                 .Child(other.PostedFile.FileName)
                 .PutAsync(other.PostedFile.InputStream);
                 otherFileLink = await task4;
            }
            //picture
            var task5 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(picture.PostedFile.FileName)
             .PutAsync(picture.PostedFile.InputStream);
            var pictureFileLink = await task5;
            //inserting a single record
            var userInfo = new UserInfo
            {
                UserID = Session["CurrentUser"].ToString(),
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
                about = aboutArea.Value,
                status = "Pending",
                //documents
                idDocument = idFileLink,
                matricCert = matricFileLink,
                transcipt = transcriptFileLink,
                supportDoc = otherFileLink,
                picture = pictureFileLink

            };
              FirebaseResponse response;
            //User is the table name in the DB
            if (Session["CurrentUserRole"].ToString() == "TUTOR  ")
            {
                userInfo.role = "Tutor";
                response = client.Set("Tutors/" + Session["CurrentUser"].ToString(), userInfo);
                UserInfo result = response.ResultAs<UserInfo>();
                status.InnerHtml = "<div class='alert alert-success'><strong> Success! </strong >Your Tutor Details have been Updated!</a>.</div>";
            }
          }
    }
}