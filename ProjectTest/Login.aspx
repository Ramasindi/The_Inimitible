<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectTest.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <header class="ex-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <h1>Login</h1>
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
                                <button style="color: black;" id="signInUser" class="btn btn-primary form-control"><b>Sign in</b></button>
                            </div>
                        <p><b>OR</b></p>
                        <div class="form-group py-2">
                            <button style="color: orangered;" id="googleLogin" class="btn btn-primary form-control"><b>Google Sign in</b></button>
                        </div>
                        <p><b>OR</b></p>
                        <div class="form-group py-2">
                            <button style="color: midnightblue;" id="facebooklogin" class="btn btn-primary form-control"><b>Facebook Sign up</b></button>
                        </div>
                        
                    </div>
                    <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                        <img class="img-fluid d-none d-lg-block" src="./assets/images/login.jpg" loading="eager" alt="login">        
                    </div>
                </div>
                    <br />
                    <div class="alert alert-light">
                        <a href="Register.aspx" class="alert-link"><strong>Not yet Registerd?</strong> | </a>
                        <a href="#" class="alert-link"><strong>Forgot password?</strong></a>
                      </div>
                    <br /><br /><br /><br />
                
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
