<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ProjectTest.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <!-- Emailjs CDN-->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
    <script type="text/javascript">
        (function () {
            emailjs.init("user_InRqQbUTsgjOHV3lAlmq9");
        })();
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Contact -->
    <section class="contact d-flex align-items-center py-5" id="contact">
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                    <div style="width:90%">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <h2 class="py-2">Send your query</h2>
                            <p class="para-light">If you would like to get in touch with us, fill the form below and submit. We will get back to you as soon as possible. </p>
                        </div>
                        <div>
                            <div class="row" >
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="text" class="form-control form-control-input" id="Name" placeholder="Enter name">
                                    </div>                                
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group py-2">
                                        <input type="tel" class="form-control form-control-input" id="Phone" placeholder="Enter phone number">
                                    </div>                                 
                                </div>
                            </div>
                            <div class="form-group py-1">
                                <input type="email" class="form-control form-control-input" id="cemail" placeholder="Enter email">
                            </div>
                            <div class="form-group py-1">
                                <input type="text" class="form-control form-control-input" id="Subject" placeholder="Enter subject">
                            </div>  
                            <div class="form-group py-2">
                                <textarea class="form-control form-control-input" id="Message" rows="6" placeholder="Message must be 25 characters minimum"></textarea>
                            </div>                            
                        </div>
                        <div class="my-3">
                            <script type="text/javascript">
                                function sendEmail() {
                                    var templateParams = {
                                        message: $("#Message").val(),
                                        subject: $("#Subject").val(),
                                        name: $("#Name").val(),
                                        phone: $("#Phone").val(),
                                        reply_to: $("#cemail").val(),
                                        sender: $("#cemail").val(),
                                    };
                                    if (templateParams.message.length > 25 && templateParams.sender.length > 8 && templateParams.name.length > 3 && templateParams.subject.length >3) {
                                        emailjs.send('service_xj13z4x', 'template_aznnkpa', templateParams)
                                           .then(function (response) {
                                                alertToast("success", "Email send successfully");
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
                            <button class="btn form-control-submit-button" onclick="sendEmail()">Submit</button>
                        </div>
                    </div> <!-- end of div -->
                </div> <!-- end of col -->
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                    <img class="img-fluid d-none d-lg-block" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fcontact.jpg?alt=media&token=32e8a2ab-a472-4681-9ed0-c430a43707a5" alt="contact">        
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of contact -->


</asp:Content>
