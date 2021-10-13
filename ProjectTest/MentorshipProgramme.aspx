<%@ Page Title="MentorshipProgramme" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="MentorshipProgramme.aspx.cs" Inherits="ProjectTest.MentorshipProgramme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
    <script type="text/javascript">
        (function () {
            // https://dashboard.emailjs.com/admin/integration
            emailjs.init('user_TjtBcV3LlvcDaI2f0NHFq');
        })();
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="contact d-flex align-items-center py-5" id="contact">
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    <div style="width: 90%">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <br />
                            <h2 class="py-2">Join our mentorship programme now!</h2>
                            <p class="para-light">Enjoy the luxury of having you own personal mentor. With just a few clicks you'll be set and ready to go.</p>
                        </div>
                        <div>
                            <div class="form-group py-1">
                                        <input type="number" class="form-control form-control-input" maxlength="10" pattern="[0-9]{10}" title="Must be 10 digits" id="exampleFormControlInput2" placeholder="Enter phone number">
                                    </div>
                            <div class="form-group py-1">
                                <input type="email" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Enter email">
                            </div>
                            <div class="form-group py-2">
                                <p class="para-light">Tell us about yourself. Strengths, weaknesses, hobbies. What other commitmments do you have apart from school? Do you play any sports, are you in the school choir? What are your short and long term goals?</p>
                                <textarea class="form-control form-control-input" id="exampleFormControlTextarea1" rows="6" placeholder="Lets us get to know you!"></textarea>
                            </div>
                        </div>


                        <script type="text/javascript">
                            function sendMail() {
                                var templateParams = {
                                    email: $("#exampleFormControlInput3").val(),
                                    phonenumber: $("#exampleFormControlInput2").val(),
                                    message: $("#exampleFormControlTextarea1").val(),

                                };
                                if (templateParams.message.length > 1 && templateParams.email.length > 3 && templateParams.phonenumber.length > 1) {
                                    emailjs.send('service_r1gg9om', 'template_e5n2foc', templateParams)
                                        .then(function (response) {
                                            alertToast("success", "Email sent successfully");
                                            console.log('SUCCESS!', response.status, response.text);
                                            document.location.reload(true)
                                        }, function (error) {
                                            alertToast("error", "OOps...Email not sent.");
                                            console.log('FAILED...', error);
                                        });
                                } else {
                                    alertToast("error", "Oops...Your Input is invalid");
                                }
                            }

                        </script>



                      

                        <div class="my-3">
                           <button type="button" class="btn form-control-submit-button" onclick="sendMail()">Get Started!</button>
                        </div>
                    </div>
                    <!-- end of div -->
                </div>
                <!-- end of col -->
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                    <img class="j" id="mentor" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fimages.jpg?alt=media&token=17c655a3-ba89-4243-a5cd-68736b040439" alt="contact" style="width: 60%; height: 60%;">

                    <img class="j" id="ment" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fo.jpg?alt=media&token=1ea33d3d-ef83-42c4-89f0-595e55f5c1c5" alt="contact" style="width: 60%; height: 60%;">
                </div>
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </section>
    <!-- end of contact -->




</asp:Content>