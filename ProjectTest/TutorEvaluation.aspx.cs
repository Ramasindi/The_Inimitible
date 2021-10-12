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
    public partial class TutorEvaluation : System.Web.UI.Page
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
            Session["CurrentUserRole"] = (string)HttpContext.Current.Session["UserRole"];
            string tutorDiv = "";
            string Modal = "";
            string session = (string)Session["CurrentUserRole"];
            if (session != "ADMIN  ")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                FirebaseResponse tuts = client.Get("Tutors/");
                if (tuts.Body != "null")
                {
                    var jsonTut = tuts.Body;
                    UserInfo tutor = tuts.ResultAs<UserInfo>();
                    Dictionary<string, UserInfo> elist = JsonConvert.DeserializeObject<Dictionary<string, UserInfo>>(jsonTut);
                    int counter = 0;
                    bool isPending = true ;
                    foreach (KeyValuePair<string, UserInfo> tut in elist)
                    {
                        isPending = true;
                        string img = "https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Flogin.jpg?alt=media&token=6bc850bd-ecc0-4b56-8762-7880b318bee0";
                        string trans = "#";
                        string transText = "Download Transcript";
                        string doc = "#";
                        string docText = "Download ID";
                        if (!string.IsNullOrEmpty(tut.Value.picture)) {img = tut.Value.picture;}
                        if (!string.IsNullOrEmpty(tut.Value.transcipt)) { trans = tut.Value.transcipt; } else { transText = "No Transcript Document"; }
                        if (!string.IsNullOrEmpty(tut.Value.idDocument)) { doc = tut.Value.idDocument; } else { docText = "No ID Document"; }
                        if (tut.Value.status == "Pending") { 
                        tutorDiv += "<div><div class='card' style='width:400px'>" +
                            "<img class='card-img-top' src='" + img+ "' alt='Card image' style='width: 100%;'/>" +
                            "<div class='card-body'><h4 class='card-title'>"+tut.Value.firstname +" " +tut.Value.surname+"</h4>" +
                            "<p class='card-text'>"+tut.Value.about+"</p>" +
                            "<p class='card-text'><a style='color: blue' href='"+trans+"'> "+transText+" </a></p>" +
                            "<p class='card-text'><a style='color: blue' href='"+doc+"'> "+docText+" </a></p><br />" +
                            "<Button type='button' style='float: left' class='mdc-button mdc-button--raised' name='approve'  value='" + tut.Value.email + "' data-uid='"+tut.Value.UserID+"'>Appove</Button>" +
                            "<Button type='button' style='float: right' class='mdc-button mdc-button--outlined' data-toggle='modal' data-target='#form"+counter+"' >Reject</Button>" +
                            "</div></div><br /></div>";
                        Modal += "<div class='modal fade' id='form"+counter +"' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>" +
                                "<div class='modal-dialog modal-dialog-centered' role='document'><div class='modal-content'><div class='modal-header border-bottom-0'>" +
                                "<h5 class='modal-title' id='exampleModalLabel'>Send Rejection Message</h5>" +
                                "<button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>" +
                                "<form><div class='modal-body'><div class='form-group'><label for='email1'>Tutor Email Address</label>" +
                                "<input type='email' class='form-control' value='"+ tut.Value.email + "' id='email1' aria-describedby='emailHelp' readonly>" +
                                "</div><div class='form-group'><label for='message'>Message</label>" +
                                "<textarea type='text' class='form-control' rows='5' id='rejectionMessage' placeholder='This message will be sent to the tutor.'></textarea>" +
                                "</div></div><div class='modal-footer border-top-0 d-flex justify-content-center'>" +
                                "<button type='button' id='toy' name='rej'  value='" + tut.Value.email+"' class='mdc-button mdc-button--raised'>Send</button></div></form></div></div></div>";
                        counter++;
                        }
                        else{
                            isPending = false;
                        }
                    }
                    tutors.InnerHtml = tutorDiv;
                    if (!isPending)
                    {
                        tutors.InnerHtml = "<div class='alert alert-success'><strong> Info! </strong> No Tutor Pending Approval!.</div>";
                    }
                    mod.InnerHtml = Modal;
                }
            }
            
        }
    }
}