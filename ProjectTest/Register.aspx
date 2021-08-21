<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjectTest.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h1>Register</h1>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->
    <!-- Basic -->
    <div class="ex-basic-1 pt-5 pb-5">
        <div class="container text-center">
            <div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group py-2">
                            <input type="email" class="form-control form-control-input" id="NewEmail" placeholder="Enter Email">
                        </div>

                        <div class="form-group py-2">
                            <input type="password" class="form-control form-control-input" id="NewPassword" placeholder="Enter password">
                        </div>
                        <div class="form-group py-2">
                            <input type="password" class="form-control form-control-input" id="ReEnterPassword" placeholder="Re-Enter password">
                        </div>
                        <div class="form-group py-2">
                            <button style="color: black;" id="signUpNewUser" class="btn btn-primary form-control"><b>Sign up</b></button>
                        </div>
                        <p><b>OR</b></p>
                        <div class="form-group py-2">
                            <button style="color: orangered;" id="googleSignIn" class="btn btn-primary form-control"><b>Google Sign in</b></button>
                        </div>
                        <p><b>OR</b></p>
                        <div class="form-group py-2">
                            <button style="color: midnightblue;" id="facebooksignin" class="btn btn-primary form-control"><b>Facebook Login</b></button>
                        </div>
                        <br /><br /><br /><br />
                    </div>
                    <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                    <img class="img-fluid d-none d-lg-block" src="./assets/images/register.jpg" style="min-width: 100%; min-height: 100%; width: auto; height: auto" alt="register">        
                </div>
                </div>

            </div>

        </div> <!-- end of container -->
    </div> <!-- end of ex-basic-1 -->
    <!-- end of basic -->
    <!-- Back To Top Button -->
    <button onclick="topFunction()" id="myBtn">
        <img src="assets/images/up-arrow.png" alt="alternative">
    </button>
    <!-- end of back to top button -->
</asp:Content>
