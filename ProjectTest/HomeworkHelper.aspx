<%@ Page Title="Homework Helpers" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="HomeworkHelper.aspx.cs" Inherits="ProjectTest.HomeworkHelper" %>

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

    <form runat="server">


        <section class="contact d-flex align-items-center py-5" id="contact">
            <div class="container-fluid text-light">
                <div class="row">
                    <div class="col-lg-6 d-flex justify-content-center justify-content-lg-end align-items-center px-lg-5" data-aos="fade-right">
                        <div style="width: 90%">
                            <div class="text-center text-lg-start py-4 pt-lg-0">

                                <h2 class="py-2">Let us help you with your homework</h2>
                                <p class="para-light">Inbox us with your homework question and let us work through it together.</p>
                            </div>
                            <div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group py-2">
                                            <input type="text" class="form-control form-control-input" id="exampleFormControlInput1" placeholder="Subject name">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group py-2">
                                            <input type="email" class="form-control form-control-input" id="exampleFormControlInput2" placeholder="Enter email">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group py-1">
                                    <input type="number" class="form-control form-control-input" id="exampleFormControlInput3" placeholder="Enter phone number">
                                </div>
                                <div class="form-group py-2">
                                    <textarea class="form-control form-control-input" id="exampleFormControlTextarea1" rows="6" placeholder="Enter your homework query"></textarea>
                                </div>
                            </div>

                            <div class="fileupload">
                                <b style="color: ghostwhite">Upload your homework documents here</b>
                                <asp:FileUpload ID="FileUpload1" runat="server" />

                            </div>


                            <script type="text/javascript">
                                function sendMail() {

                                    var templateParams = {
                                        varSub: exampleFormControlInput1.value,
                                        varEmail: exampleFormControlInput2.value,
                                        message: exampleFormControlTextarea1.value,
                                        phoneNumber: exampleFormControlInput3.value

                                    };

                                    emailjs.send('service_r1gg9om', 'template_g77l5yr', templateParams)
                                        .then(function () {
                                            alertToast("success", "Email send successfully");
                                            console.log('SUCCESS!');
                                            document.location.reload(true);
                                        }, function (error) {
                                            console.log('FAILED...', error);
                                            alertToast("error", "Email not sent");
                                        });
                                }

                            </script>


                            <div class="my-3">
                                <button type="button" class="btn form-control-submit-button" onclick="sendMail()">Ask Away!</button>
                            </div>
                        </div>
                        <!-- end of div -->
                    </div>
                    <!-- end of col -->
                    <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                        <img class="img-fluid d-none d-lg-block" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fcontact.jpg?alt=media&token=32e8a2ab-a472-4681-9ed0-c430a43707a5" alt="contact">
                    </div>
                    <!-- end of col -->
                </div>
                <!-- end of row -->
            </div>
            <!-- end of container -->
        </section>
        <!-- end of contact -->
    </form>



</asp:Content>
