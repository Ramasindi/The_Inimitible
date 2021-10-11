<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" Async="true" AutoEventWireup="true" CodeBehind="TutorRegister.aspx.cs" Inherits="ProjectTest.TutorRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
    </style>
    <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" class="needs-validation" novalidate>
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
                        <div class="pagination-container">
                            <div data-page="1">
                                <div class="tab">
                                    <h3>Personal Details</h3>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="userEmail">Registered Email:</label><span style="float: right;"><b id="Urole" runat="server"></b></span>
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
                                        <input type="date" required value="2001-01-01" class="form-control form-control-input" id="userdob" runat="server">
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="contact">Contact Number:</label>
                                        <input type="tel" required class="form-control form-control-input" id="contact" runat="server" placeholder="Contact">
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="userGender">Gender:</label>
                                        <select required class="form-control" id="userGender" runat="server">
                                            <option value="">Select...</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                            <option value="Rather Not Say">Rather Not Say</option>
                                            <option value="Other">Other</option>
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
                            </div>
                            <div data-page="2" style="display: none;">
                                <div class="tab">
                                    <h3>Your Location</h3>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="address1">Address Line 1:</label>
                                        <input type="text" required class="form-control form-control-input" id="address1" runat="server" placeholder="Unit, Street Name">
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="address2">Address Line 2:</label>
                                        <input type="text" required class="form-control form-control-input" id="address2" runat="server" placeholder="Apartment, Complex">
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="city">City:</label>
                                        <input type="text" required class="form-control form-control-input" id="city" runat="server" placeholder="City">
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="province">Province:</label>
                                        <input type="text" required class="form-control form-control-input" id="province" runat="server" placeholder="Province">
                                    </div>
                                </div>
                            </div>
                            <div data-page="3" style="display: none;">
                                <div class="tab">
                                    <h3>Lesson Medium</h3>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="online">Do you want to tutor online?</label>
                                        <select required class="form-control" id="online" runat="server">
                                            <option value="">Select...</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="inPerson">Do you want to tutor in person?</label>
                                        <select required class="form-control" id="inPerson" runat="server" placeholder="something">
                                            <option value="">Select...</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group py-2 input-group-sm">
                                    <label for="communication">Preferred Communication Languages:</label>
                                    <input type="text" required class="form-control form-control-input" id="communication" runat="server" placeholder="Isizulu, Sotho & English">
                                </div>
                            </div>
                            <div data-page="4" style="display: none;">
                                <div class="tab">
                                    <h3>Documents</h3>
                                    <div class="form-group py-2 input-group-sm">
                                        <p>
                                            You can upload one document per category. Documents must be smaller than 10mb. The following extesions
                                        are acceptible PDF, JPEG.
                                        </p>
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="idFile"><strong>Identity Document</strong><span style="opacity: .6">(*Required)</span></label>
                                        <br />
                                        <input type="file" id="idFile" onchange="validateSize(this)" name="filename" required runat="server" />
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="matric"><strong>Matric Certificate</strong><span style="opacity: .6">(*Required)</span></label>
                                        <br />
                                        <input type="file" id="matric" onchange="validateSize(this)" name="filename" required runat="server" />
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="picture"><strong>Your Professional Headshot</strong><span style="opacity: .6">(*Required)</span></label>
                                        <br />
                                        <input type="file" id="picture" onchange="validateSize(this)" name="filename" runat="server" accept="image/x-png,image/gif,image/jpeg" />
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="transcript"><strong>University Transcript</strong><span style="opacity: .6">(*Required)</span></label>
                                        <br />
                                        <input type="file" id="transcript" onchange="validateSize(this)" required name="filename" runat="server" />
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="other"><strong>Supporting Document(s)</strong><span style="opacity: .6">(Optional)</span></label>
                                        <br />
                                        <input type="file" id="other" onchange="validateSize(this)" name="filename" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div data-page="5" style="display: none;">
                                <div class="tab">
                                    <h3>Tell us about yourself</h3>
                                    <div class="form-group py-2 input-group-sm">
                                        <p>
                                            Prospective clients will read this section when they are choosing their tutor. Complete
                                        this section using impeccable grammar to provide clients with a concise but exciting description 
                                        of yourself and who you are. Aim to keep it original, yet appropriate.
                                        </p>
                                    </div>
                                    <div class="form-group py-2 input-group-sm">
                                        <label for="aboutMe">Describe yourself in full.</label>
                                        <textarea required name="aboutMe" id="aboutArea" rows="4" cols="80" class="form-control form-control-input" placeholder="This is the first thing clients will read about you - make it count!" runat="server"></textarea>
                                        <div id="the-count">
                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div id="btnUpdate">
                                        <asp:Button type="submit" Style="float: left;" class="mdc-button mdc-button--raised" runat="server" Text="Update Details" ID="UpdateProfile" OnClick="UpdateProfile_Click" />
                                    </div>
                                </div>
                            </div>
                            <!-- Circles which indicates the steps of the form: -->
                            <div class="steps" style="text-align: center; margin-top: 40px;">
                                <span id="1" class="step active"></span>
                                <span id="2" class="step"></span>
                                <span id="3" class="step"></span>
                                <span id="4" class="step"></span>
                                <span id="5" class="step"></span>
                            </div>
                            <br />
                            <div class="text-center">
                                <div class="pagination justify-content-end">
                                    <ul class="pagination">
                                        <li data-page="-">
                                            <button onclick="left()" class="mdc-button mdc-button--raised">Previous</button></li>
                                        <li data-page="1">&nbsp</li>
                                        <li data-page="2">&nbsp</li>
                                        <li data-page="3">&nbsp</li>
                                        <li data-page="4">&nbsp</li>
                                        <li data-page="5">&nbsp</li>
                                        <li data-page="+">&nbsp
                                            <button onclick="right()" style="float: right;" class="mdc-button mdc-button--raised">Next</button></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <script>
                            var paginationHandler = function () {
                                // store pagination container so we only select it once
                                var $paginationContainer = $(".pagination-container"),
                                    $pagination = $paginationContainer.find('.pagination ul');
                                // click event
                                $pagination.find("li button").on('click.pageChange', function (e) {
                                    e.preventDefault();
                                    // get parent li's data-page attribute and current page
                                    var parentLiPage = $(this).parent('li').data("page"),
                                        currentPage = parseInt($(".pagination-container div[data-page]:visible").data('page')),
                                        numPages = $paginationContainer.find("div[data-page]").length;
                                    // make sure they aren't clicking the current page
                                    if (parseInt(parentLiPage) !== parseInt(currentPage)) {
                                        // hide the current page                                            
                                        $paginationContainer.find("div[data-page]:visible").hide();
                                        if (parentLiPage === '+') {
                                            // next page
                                            $paginationContainer.find("div[data-page=" + (currentPage + 1 > numPages ? numPages : currentPage + 1) + "]").show();
                                        } else if (parentLiPage === '-') {
                                            // previous page
                                            $paginationContainer.find("div[data-page=" + (currentPage - 1 < 1 ? 1 : currentPage - 1) + "]").show();
                                        }
                                    }
                                });
                            };
                            $(document).ready(paginationHandler);
                            //next hidden div
                            var counter = 1;
                            function right() {
                                if (counter < 5) {
                                    counter++;
                                    document.getElementById(counter).className = "step active";
                                    document.getElementById(counter - 1).className = "step";
                                }
                            }
                            //previous hidden div
                            function left() {
                                if (counter >= 2) {
                                    counter--;
                                    document.getElementById(counter).className = "step active";
                                    document.getElementById(counter + 1).className = "step";
                                }
                            }
                            //whole form validation
                            (function () {
                                'use strict';
                                window.addEventListener('load', function () {
                                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                    var forms = document.getElementsByClassName('needs-validation');
                                    // Loop over them and prevent submission
                                    var validation = Array.prototype.filter.call(forms, function (form) {
                                        form.addEventListener('submit', function (event) {
                                            if (form.checkValidity() === false) {
                                                event.preventDefault();
                                                event.stopPropagation();
                                                alertToast("error", "Oops...Some fields are not valid.");
                                            } else {
                                                document.getElementById("1").className += " finish";
                                                document.getElementById("2").className += " finish";
                                                document.getElementById("3").className += " finish";
                                                document.getElementById("4").className += " finish";
                                                document.getElementById("5").className += " finish";
                                            }
                                            form.classList.add('was-validated');
                                        }, false);
                                    });
                                }, false);
                            })();
                            //validating sizes of files
                            function validateSize(input) {
                                const fileSize = input.files[0].size / 1024 / 1024; // in MiB
                                if (fileSize > 10) {
                                    Swal.fire({
                                        title: 'Max Size Exceeded',
                                        text: 'File size exceeds 10 MiB, Try a smaller file.',
                                        showClass: {
                                            popup: 'animate__animated animate__fadeInDown'
                                        },
                                        hideClass: {
                                            popup: 'animate__animated animate__fadeOutUp'
                                        }
                                    })
                                    input.value = null;
                                }

                            }
                        </script>
                    </div>

                    <div id="status" runat="server"></div>
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

    </form>

</asp:Content>
