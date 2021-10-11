<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ProjectTest.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
     <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Reset Password</h1>
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
            <div class="container text-center">
                <div>

                    <div class="row">
                        <div class="col-sm-6" data-aos="fade-right">
                            <br />
                            <div class="alert alert-info">
                                <strong>Info!</strong> <p>To reset your email address, type your email address below and wait for further instruction from your email. If you cannot reset your email, </p><a href="Contact.aspx" class="alert-link">please kindly contact us</a>.
                             </div>
                            
                            <div class="form-group py-2 input-group-sm">
                                <input type="email" required class="form-control form-control-input" id="resetemail" placeholder="Enter Email">
                            </div>
                            <div class="alert-sm alert-danger" id="ResetAlert"></div>
                            <div class="form-group py-2">
                                <button style="color: black;" id="resetEmail" class="btn btn-primary form-control">
                                    <b>RESET PASSWORD</b> &nbsp &nbsp<span id="resetSpinner" class="spinner-border spinner-border-sm" style="display: none"></span>
                                </button>
                            </div>
                        </div>
                        <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                            <img class="img-fluid d-none d-lg-block" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fresetpassword.jpg?alt=media&token=2b6226d0-f257-4960-9656-403bec465ef1" loading="eager" alt="login">
                           
                        </div>
                    </div>
                    <br />
                    <div class="alert alert-light">
                        <a href="Login.aspx" class="alert-link"><strong>Go back to Login</strong>  </a>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />

                </div>

            </div>
            <!-- end of container -->
        </div>
        <!-- end of ex-basic-1 -->
        <!-- end of basic -->
    </form>
</asp:Content>
