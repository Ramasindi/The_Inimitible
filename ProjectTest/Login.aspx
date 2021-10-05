<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectTest.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Login</h1>
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
                            <div class="form-group py-2 input-group-sm">
                                <input type="email" required class="form-control form-control-input" id="email" placeholder="Enter Email">
                            </div>
                            <div class="form-group py-2 input-group-sm">
                                <input type="password" required class="form-control form-control-input" id="password" placeholder="Enter password">
                            </div>
                            <div class="alert-sm alert-danger" id="loginAlert">
                            </div>
                            <div class="form-group py-2">
                                <button style="color: black;" id="signInUser" class="btn btn-primary form-control">
                                    <b>Sign in</b> &nbsp &nbsp<span id="signInSpinner" class="spinner-border spinner-border-sm" style="display: none"></span>
                                </button>
                            </div>
                            <p><b>OR</b></p>
                            <div class="form-group py-2">
                                <button style="color: orangered;" id="googleLogin" class="btn btn-primary form-control">
                                    <b>Google Sign in</b> &nbsp &nbsp<span id="googleLogSpinner" class="spinner-border spinner-border-sm" style="display: none"></span>
                                </button>
                            </div>
                            <p><b>OR</b></p>
                            <div class="form-group py-2">
                                <button style="color: midnightblue;" id="facebooklogin" class="btn btn-primary form-control">
                                    <b>Facebook Sign in</b>  &nbsp &nbsp<span id="facebookLogSpinner" class="spinner-border spinner-border-sm" style="display: none"></span>
                                </button>
                            </div>

                        </div>
                        <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                            <img class="img-fluid d-none d-lg-block" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Flogin.jpg?alt=media&token=6bc850bd-ecc0-4b56-8762-7880b318bee0" loading="eager" alt="login">
                        </div>
                    </div>
                    <br />
                    <div class="alert alert-light">
                        <a href="Register.aspx" class="alert-link"><strong>Not yet Registerd?</strong> | </a>
                        <a href="ForgotPassword.aspx" class="alert-link"><strong>Forgot password?</strong></a>
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

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="assets/images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
    </form>
   
</asp:Content>
