<%@ Page Title="Live Session" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="LiveSession.aspx.cs" Inherits="ProjectTest.LiveSession" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
<script type="text/javascript">
	(function() {
	emailjs.init("user_kcLO5PQpTSoGWdCP2nYc6");
	})();
	async function  sendEmail(){
	//make an input to enter email for the person youn are calling
        const { value: email } = await Swal.fire({
            title: 'Input email address',
            input: 'email',
            allowOutsideClick: false,
            inputLabel: 'Email address',
            inputPlaceholder: 'Enter the email address to call'
        })
        var rec;
        if (email) {
            Swal.fire(`Session ID sent to ${email}`)
            rec = email;
        }
	var templateParams = {
    message: CId,
	receiver: rec,
	from_name: 'Mind Academy'
};
 
emailjs.send('service_86pd4e9', 'template_mjfgs3m', templateParams)
    .then(function (response) {
        alertToast("success", "Email send successfully");
       console.log('SUCCESS!', response.status, response.text);
    }, function (error) {
        alertToast("error", "oops...Email not sent");
       console.log('FAILED...', error);
    });
	}
    
</script>
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Live Tutoring Session</h1>
                    </div>
                    <!-- end of col -->
                </div>
                <!-- end of row -->
            </div>
            <!-- end of container -->
        </header>
    <div class="ex-basic-1 pt-5 pb-5">
            <div class="container">
                <p style="text-align:center"><b>Paste code from your email to answer.</b></p>
               <input class="mdc-text-field" style="display: block;margin:auto" id="callInput" />
                    
                    <div style="display: flex; align-items: center;justify-content: center;">
                      <div>
                          <span style="float: left;">
                              <button class="mdc-button mdc-button--raised" id="webcamButton">
                                    <i class="material-icons mdc-button__icon" aria-hidden="true">perm_camera_mic</i>
                                        <span class="mdc-button__label">Start webcam</span>
                               </button> &nbsp &nbsp &nbsp 
                                <button class="mdc-button mdc-button--raised" id="callButton" disabled>
                                    <i class="material-icons mdc-button__icon" aria-hidden="true">group_add</i>
                                        <span class="mdc-button__label">Start Call</span>
                                 </button>
                          </span> <br /><br />
                          <h3 style="text-align:left">Local Stream</h3>
                        <video id="webcamVideo" autoplay playsinline="true" style="width: 40vw; height: 30vw; margin: 2rem; background: #2c3e50;"></video>
                      
                            
                      
                      </div> 
                      <div>
                         <span style="float: right;">
                            <button class="mdc-button mdc-button--raised" id="answerButton" disabled>
                                <i class="material-icons mdc-button__icon" aria-hidden="true">group</i>
                                    <span class="mdc-button__label">Answer Call</span>
                            </button>&nbsp &nbsp &nbsp
                            <button class="mdc-button mdc-button--raised" id="hangupButton" disabled>
                                <i class="material-icons mdc-button__icon" aria-hidden="true">close</i>
                                    <span class="mdc-button__label">Hangup</span>
                            </button>
                         </span><br /><br />
                          <h3 style="text-align:right">Remote Stream</h3>
                        <video id="remoteVideo" autoplay playsinline="true" style="width: 40vw; height: 30vw; margin: 2rem; background: #2c3e50;"></video>
                      </div>
                  </div>

            </div>
    </div>
    <script src="./js/videochat.js"></script> <!--Video call script-->
</asp:Content>
