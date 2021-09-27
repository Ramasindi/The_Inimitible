<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="TutorRegister.aspx.cs" Inherits="ProjectTest.TutorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Hide all steps by default: */
        .tab {
          display: none;
        }

        /* Make circles that indicate the steps of the form: */
        .step {
          height: 15px;
          width: 15px;
          margin: 0 2px;
          background-color: #bbbbbb;
          border: none;
          border-radius: 50%;
          display: inline-block;
          opacity: 0.5;
        }

        /* Mark the active step: */
        .step.active {
          opacity: 1;
        }

        /* Mark the steps that are finished and valid: */
        .step.finish {
          background-color: #04AA6D;
        }

        a{
            color: black;
            text-decoration: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Become A Tutor</h1>
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
            <div class="container tutorForm">
                    <div class="row">
                        <div class="col-sm-6" data-aos="fade-right">
                            <div class="tab">
                                <h3>Personal Details</h3>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="userEmail">Registered Email:</label><span style="float: right;"><b id ="Urole" runat="server"></b></span>
                                    <input type="email" required class="form-control form-control-input" id="userEmail" runat="server" readonly>
                                </div>  
                                <div class="form-group py-2 input-group-sm">
                                        <label for="userFirstName">First Name:</label>
                                        <input type="text" required class="form-control form-control-input" id="userFirstname" runat="server" placeholder="First Name">
                                    </div>
                                <div class="form-group py-2 input-group-sm">
                                        <label for="userSurname">Surname:</label>
                                        <input type="text" required class="form-control form-control-input" id="userSurname" runat="server" placeholder="Surname">
                                    </div>
                                <div class="form-group py-2 input-group-sm">
                                        <label for="dob">Date of Birth:</label>
                                        <input type="date" required class="form-control form-control-input" id="userdob" runat="server">
                                    </div>
                                <div class="form-group py-2 input-group-sm">
                                        <label for="contact">Contact Number:</label>
                                        <input type="tel" required class="form-control form-control-input" id="contact" runat="server" placeholder="Contact">
                                    </div>
                                <div class="form-group py-2 input-group-sm">
                                        <label for="userGender">Gender:</label>
                                        <select required class="form-control" id="userGender" runat="server">
                                            <option selected>Select...</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                            <option>Rather Not Say</option>
                                            <option>Other</option>
                                        </select>
                                        </div>
                                <div class="form-group py-2 input-group-sm">
                                        <label for="schoolname">High School Name:</label>
                                        <input type="text" required class="form-control form-control-input" id="schoolname" runat="server" placeholder="School Name">
                                    </div>
                                <div class="form-group py-2 input-group-sm">
                                        <label for="institution">Tertiary Institution:</label>
                                        <input type="text" required class="form-control form-control-input" id="institution" runat="server" placeholder="University, College">
                                    </div>
                            </div>
                            <div class="tab">
                                <h3>Your Location</h3>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="address1">Address Line 1:</label>
                                    <input type="text" required class="form-control form-control-input" id="address1" runat="server" placeholder="Unit, Street Name">
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="address2">Address Line 2:</label>
                                    <input type="text" class="form-control form-control-input" id="address2" runat="server" placeholder="Apartment, Complex">
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="city">City:</label>
                                    <input type="text" required class="form-control form-control-input" id="city" runat="server" placeholder="">
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="province">Province:</label>
                                    <input type="text" required class="form-control form-control-input" id="province" runat="server" placeholder="">
                                </div>
                            </div>
                            <div class="tab">
                                <h3>Lesson Medium</h3>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="online">Do you want to tutor online?</label>
                                    <select required class="form-control" id="online" runat="server">
                                            <option selected>Select...</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                     </select>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="inPerson">Do you want to tutor in person?</label>
                                    <select required class="form-control" id="inPerson" runat="server">
                                            <option selected>Select...</option>
                                            <option>Yes</option>
                                            <option>No</option>
                                     </select>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="communication">Preffered Communication Language(s):</label>
                                    <input type="text" required class="form-control form-control-input" id="communication" runat="server" placeholder="Eg: Zulu, Sesotho & English">
                                </div>
                            </div>
                            
                            <div class="tab">
                                <h3>Tell us about yourself</h3> 
                                <div class="form-group py-2 input-group-sm">
                                    <p>Prospective clients will read this section when they are choosing their tutor. Complete
                                        this section using impeccable grammar to provide clients with a concise but exciting description 
                                        of yourself and who you are. Aim to keep it original, yet appropriate.
                                    </p>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="aboutMe">Describe yourself in full.</label>
                                    <textarea name="aboutMe" id="aboutArea" rows="4" cols="80" placeholder="This is the first thing clients will read about you - make it count!" maxlength="400" runat="server"></textarea>
                                    <div id="the-count">
                                    </div>
                                </div>
                            </div>

                            <%--<div class="tab">
                                <h3>Documents</h3>
                                <div class="form-group py-2 input-group-sm">
                                    <p>You can upload one document per category. Documents must be smaller than 10mb. The following extesions
                                        are acceptible PDF, JPEG.
                                    </p>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="idFile"><strong>Identity Document</strong><span style="opacity:.6">(*Required)</span></label>
                                    <br />
                                    <input type="file" id="idFile" name="filename" required runat="server"/>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="matric"><strong>Matric Certificate</strong><span style="opacity:.6">(*Required)</span></label>
                                    <br />
                                    <input type="file" id="matric" name="filename" required runat="server"/>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="transcript"><strong>University Transcript</strong><span style="opacity:.6">(Optional)</span></label>
                                    <br />
                                    <input type="file" id="transcript" name="filename" runat="server"/>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="other"><strong>Supporting Document(s)</strong><span style="opacity:.6">(Optional)</span></label>
                                    <br />
                                    <input type="file" id="other" name="filename" runat="server"/>
                                </div>
                            </div>--%>

                            <div style="overflow:auto;">
                                <div style="float:right;">
                                <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                                <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                              </div>
                            </div>

                            <!-- Circles which indicates the steps of the form: -->
                            <div style="text-align:center;margin-top:40px;">
                              <span class="step"></span>
                              <span class="step"></span>
                              <span class="step"></span>
                              <span class="step"></span>
                              <span class="step"></span>
                            </div>
                        </div>
                        <div id="status" runat="server"></div>
                        
                        <div id="btnUpdate">
                            <asp:Button  style="color: black; float: left;" class="btn btn-primary mt-3" runat="server" Text="Update Details" id="UpdateProfile" OnClick="UpdateProfile_Click"/>                           
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
