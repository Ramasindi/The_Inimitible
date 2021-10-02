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
using Firebase.Storage;
using System.Threading;

namespace ProjectTest
{
    public partial class TutorRegister : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "t14CXupG4aZrZpq3ZzPPeq6Dbk4Nj9sZX0zrrO69",
            BasePath = "https://mind-academy-8357a-default-rtdb.firebaseio.com/"
        };
        //Client
        IFirebaseClient client; 
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
                userEmail.Value = Session["CurrentUserEmail"].ToString();
                if (!string.IsNullOrEmpty(Session["CurrentUser"] as string))
                {
                    if (!IsPostBack)
                    {
                        FirebaseResponse User;
                        User = client.Get("Tutors/" + Session["CurrentUser"].ToString());
                        if (User.Body != "null")
                        {
                            UserInfo user = User.ResultAs<UserInfo>();
                            userEmail.Value = Session["CurrentUserEmail"].ToString();
                            if (!string.IsNullOrEmpty(Session["CurrentUserRole"] as string))
                            {
                                if (user.firstname != null)
                                    userFirstname.Value = user.firstname;
                                if (user.surname != null)
                                    userSurname.Value = user.surname;
                                if (user.dob != null)
                                    userdob.Attributes.Add("value", user.dob.ToString("yyyy-MM-dd"));
                                if (user.gender != null)
                                    userGender.Value = user.gender;
                                if (user.contact != null)
                                    contact.Value = user.contact;
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
                                //Files, remove required if it is already in the db
                                if (user.transcipt != null)
                                    transcript.Attributes.Remove("required");
                                if (user.matricCert != null) 
                                    matric.Attributes.Remove("required");
                                if (user.idDocument != null) 
                                    idFile.Attributes.Remove("required");
                                if (user.picture != null) 
                                    picture.Attributes.Remove("required");                              
                            }
                        }
                        else
                        {
                            status.InnerHtml = "<div class='alert alert-success'><strong> Info! </strong > No Tutor Profile Details FOUND!</a>.</div>";
                        }
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
            string idFileLink = ""; string matricFileLink = ""; string transcriptFileLink = ""; string otherFileLink = ""; string pictureFileLink = "";
            //incase user update or not
            FirebaseResponse User;
            User = client.Get("Tutors/" + Session["CurrentUser"].ToString());
            if (User.Body != "null")
            {
                UserInfo user = User.ResultAs<UserInfo>();
                if (user.transcipt != null)
                    transcriptFileLink = user.transcipt;
                if (user.matricCert != null)
                    matricFileLink = user.matricCert;
                if (user.idDocument != null)
                    idFileLink = user.idDocument;
                if (user.picture != null)
                    pictureFileLink = user.picture;
                if (user.supportDoc != null)
                    otherFileLink = user.supportDoc;
            }

            if (idFile.PostedFile.ContentLength != 0)
            {
             //id
             var task1 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(idFile.PostedFile.FileName)
             .PutAsync(idFile.PostedFile.InputStream);
              idFileLink = await task1;
            }
            
            if (matric.PostedFile.ContentLength != 0)
            {
             //matric   
             var task2 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(matric.PostedFile.FileName)
             .PutAsync(matric.PostedFile.InputStream);
              matricFileLink = await task2;
            }
            
            if (transcript.PostedFile.ContentLength != 0)
            {  
             //transcript
             var task3 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(transcript.PostedFile.FileName)
             .PutAsync(transcript.PostedFile.InputStream);
              transcriptFileLink = await task3;
            }
            
            if (other.PostedFile.ContentLength != 0)
            { //we only upload it if it is provided
             //other
             var task4 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(other.PostedFile.FileName)
             .PutAsync(other.PostedFile.InputStream);
             otherFileLink = await task4;
            }
           
            if (picture.PostedFile.ContentLength != 0)
            { //we only upload it if it is provided
              //picture
             var task5 = new FirebaseStorage("mind-academy-8357a.appspot.com")
             .Child("data")
             .Child("Docs")
             .Child(Session["CurrentUser"].ToString())
             .Child(picture.PostedFile.FileName)
             .PutAsync(picture.PostedFile.InputStream);
              pictureFileLink = await task5;
            }
            //inserting a single record
            var userInfo = new UserInfo
            {
                UserID = Session["CurrentUser"].ToString(),
                email = Session["CurrentUserEmail"].ToString(),
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
                communication = communication.Value,
                //documents
                idDocument = idFileLink,
                matricCert = matricFileLink,
                transcipt = transcriptFileLink,
                supportDoc = otherFileLink,
                picture = pictureFileLink

            };
            FirebaseResponse response;
            //Tutor is the table name in the DB
            if (Session["CurrentUserRole"].ToString() == "TUTOR  ")
            {
                userInfo.role = "Tutor";
                response = client.Set("Tutors/" + Session["CurrentUser"].ToString(), userInfo);
                UserInfo result = response.ResultAs<UserInfo>();
               // status.InnerHtml = "<div class='alert alert-success'><strong> Success! </strong > Your Tutor Details have been updated</a>.</div>" +
               //"<div class='loader'></div>";
       
                    Response.Redirect("TutorProfile.aspx",false);
            }
        }
    }
}