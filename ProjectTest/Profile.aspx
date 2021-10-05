<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ProjectTest.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Profile</h1>
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
                                                        
                            <div class="form-group py-2 input-group-sm">
                                <label for="userEmail">Registered Email:</label><span style="float: right;"><b id ="Urole" runat="server"></b></span>
                                <input type="email" required class="form-control form-control-input" id="userEmail" runat="server" readonly>
                            </div>
                            <div id="detailsDiv" runat="server">
                                <div class="form-group py-2 input-group-sm">
                                    <label for="userFirstName">Enter First Name:</label>
                                    <input type="text" required class="form-control form-control-input" id="userFirstname" runat="server" placeholder="First Name">
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="userSurname">Enter Surname:</label>
                                    <input type="text" required class="form-control form-control-input" id="userSurname" runat="server" placeholder="Surname">
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="dob">Select your Date of Birth:</label>
                                    <input type="date" required value="2000-01-01" class="form-control form-control-input" id="userdob" runat="server">
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="contact">Enter Contact:</label>
                                    <input type="tel" required class="form-control form-control-input" id="contact" runat="server" placeholder="Contact">
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="userGender">Select your Gender:</label>
                                    <select required class="form-control" id="userGender" runat="server">
                                        <option selected>Gender</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Rather Not Say</option>
                                        <option>Other</option>
                                    </select>
                                    </div>
                                <div id="schoolHide" runat="server" class="form-group py-2 input-group-sm">
                                    <label for="schoolname">Enter School Name:</label>
                                    <input type="text" required class="form-control form-control-input" id="schoolname" runat="server" placeholder="School Name">
                                </div>
                                <div id="usergradeHide" runat="server" class="form-group py-2 input-group-sm">
                                    <label for="userGrade">Enter Current Grade:</label>
                                    <input type="number" min="6" max="12" required class="form-control form-control-input" id="userGrade" runat="server" placeholder="Grade">
                                </div>
                            </div>
                            <div id="status" runat="server">

                            </div>
                           
                            <asp:Button  style="color: black; float: left" class="btn btn-primary mt-3" runat="server" Text="Update Details" ID="UpdateProfile" OnClick="UpdateProfile_Click" />                           
                        </div>
                        <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                            <div class="container text-center">
                                <h2 style="color: red;">Add card +</h2>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

                </div>

            </div>
            <!-- end of container -->
        <!-- end of ex-basic-1 -->
        <!-- end of basic -->

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="assets/images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
    </form>
</asp:Content>
