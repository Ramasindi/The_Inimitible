<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="TutorEvaluation.aspx.cs" Inherits="ProjectTest.TutorEvaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
       <!-- Emailjs CDN-->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
        <script type="text/javascript">
            (function () {
                emailjs.init("user_kcLO5PQpTSoGWdCP2nYc6");
            })();
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>TUTOR EVALUATION</h1>
                    </div>
                    <!-- end of col -->
                </div>
                <!-- end of row -->
            </div>
            <!-- end of container -->
        </header>
        <!-- end of ex-header -->
        <!-- end of header -->
        <!-- Basic -->
        <div class="ex-basic-1 pt-5 pb-5">
            <div class="container">
                    <div class="row">
                        <div class="col-sm-6" data-aos="fade-right">

                            <div id="tutors" runat="server">
                                <!--Tutors pending approval-->
                            </div>
                            <div id="mod" runat="server">
                                <!--dynamic modal here-->
                            </div>
                           <script>
                               $('body').on("click", "button[name=rej]", function () {
                                   var parent = $(this).parent().parent();
                                   var templateParams = {
                                       tutorEmail: $(this).attr("value"),
                                       Subject: "Tutoring Application",
                                       opening: "We regret to inform you that your application to become a Tutor at Mind Academy has been declined. Please find the details below from our reviewers", //we regret or congrats
                                       message: parent.find('#rejectionMessage').val(),
                                   };
                                   console.log($("#myAccount").val());
                                   emailjs.send('service_86pd4e9', 'template_d4bdy8a', templateParams)
                                       .then(function (response) {
                                           alertToast("success", "Email sent successfully");
                                           setTimeout(function () {
                                               document.location.reload(true);
                                           }, 2000);
                                   console.log('SUCCESS!', response.status, response.text);

                                    }, function (error) {
                                            alertToast("error", "Oops...Email not sent.");
                                           setTimeout(function () {
                                               document.location.reload(true);
                                           }, 2000);
                                           console.log('FAILED...', error);
                                       });

                               });
                               $('body').on("click", "button[name=approve]", function () {
                                   var templateParams = {
                                       tutorEmail: $(this).attr("value"),
                                       Subject: "Tutoring Application",
                                       opening: "Congratulations! You have successfully passed Mind Academy Tutor background checks.", 
                                       message: "You can start effective immediately with your Tutoring journey at Mind Academy. We are delighted to have you.",
                                   };
                                   //updating database
                                   firebase.database().ref('Tutors/' + $(this).data('uid') + "/status").set("Approved")
                                       .then(function onSuccess(res) {
                                       emailjs.send('service_86pd4e9', 'template_d4bdy8a', templateParams)
                                       .then(function (response) {
                                           alertToast("success", "Email sent successfully");
                                           setTimeout(function () {
                                               document.location.reload(true);
                                           }, 2000);
                                           console.log('SUCCESS!', response.status, response.text);

                                       }, function (error) {
                                           alertToast("error", "Oops...Email not sent.");
                                           setTimeout(function () {
                                               document.location.reload(true);
                                           }, 2000);
                                           console.log('FAILED...', error);
                                       });
                                           alertToast("success", "Approved successfully");
                                           setTimeout(function () {
                                               document.location.reload(true);
                                           }, 2000);
                                   }).catch(function onError(err) {
                                       alertToast("error", "Approval failed");
                                   });

                               });
                           
                           </script>   
                        </div>
                        <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
         
                        </div>
                    
                    <br />
                    <br />
    
                </div>

            </div>
            <!-- end of container -->
        <!-- end of ex-basic-1 -->
        <!-- end of basic -->
            </div>
   
</asp:Content>
