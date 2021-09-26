using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTest
{
    public partial class TutorProfile1 : System.Web.UI.Page
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
            client = new FireSharp.FirebaseClient(config);
            if (client != null)
            {
                if (Session["CurrentUser"] != null)
                {
                    FirebaseResponse User;
                    User = client.Get("Tutors/" + Session["CurrentUser"].ToString());
                    if (!string.IsNullOrEmpty(User.Body))
                    {
                        UserInfo user = User.ResultAs<UserInfo>();
                        if (user.firstname != null)
                            names.InnerText = user.firstname + " " + user.surname;
                        if (user.city != null && user.province != null)
                            location.InnerText = user.province + " " + user.city;
                        if (user.about != null)
                            about.InnerText = user.about;
                        if (user.institution != null)
                            tertiary.InnerText = " " + user.institution;
                        if (user.onlineSession != null)
                            online.InnerText = " Online Sessions: " + user.onlineSession;
                        if (user.onlineSession != null)
                            inPerson.InnerText = " In Person Session: " + user.inPersonSession;
                        if (user.communication != null)
                            language.InnerText = " " + user.communication;
                    }
                }
            }
        }
    }
}