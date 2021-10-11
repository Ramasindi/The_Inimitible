<%@ Page Title="Profile" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ProjectTest.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	            <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
    <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uuid/8.1.0/uuidv4.min.js"></script>
    <style>
.melnik909{
  
  position: fixed;
  bottom: 1rem;
  right: 1rem;
  
  font-size: 1.2rem;
  color: #000;
  text-decoration: none;
}

.payment-card{
	width: 100%;
	box-sizing: border-box;
	padding: 2% 2% 4%;
}

.bank-card{
	position: relative;
	height: 100%;
	font-family: arial, sans-serif;
}

.bank-card__side{
	
	width: 65%;
	position: absolute;
	border-radius: 10px;
	border-style: solid;
}

.bank-card__side_front{
	
	background-color: #f0f0ee;
	padding: 5%;
	box-shadow: 0 0 10px #f4f4f2;
	border-color: #a29e97;
	
	top: 0;
	left: 0;
	z-index: 2;

	height: 265px;
    width: 397px;
}

.bank-card__side_back{
	
	background-color: #e0ddd7;
	padding: 24.5% 5% 11%;
	box-shadow: 0 0 2rem #f3f3f3;
	
	text-align: right;
	border-color: #dad9d6;

	top: 30%;
	right: 0;	
	height: 270px;
	width: 400px;
}

.bank-card__side_back:before{
	
	content: "";
	width: 100%;
	height: 25%;
	background-color: #8e8b85;

	position: absolute;
	top: 14%;
	right: 0;
}

.bank-card__inner{
	margin-bottom: 4%;
}

.bank-card__inner:last-child{
	margin-bottom: 0;
}

.bank-card__label{
	display: inline-block;
	vertical-align: middle;
	width: 25%;
}

.bank-card__label_fullwidth{
	width: 100%;
}

.bank-card__hint{
	display: block;
	text-indent: -9999px;
	overflow: hidden;
	position: absolute;
}

.bank-card__caption{
	text-transform: uppercase;
	font-size: 100%;
	margin-left: 1%;
}

.bank-card__field{
	
	box-sizing: border-box;
	border: solid #d0d0ce;
	outline: none;
	width: 100%;
	height: 40px; border-radius:10px;
	padding: .7em;
	position: relative;
	z-index: 2;
}

.bank-card__field:focus{
	border-color: #fdde60;
}

.bank-card__separator{
	
	color: #c4c4c3;
	
	padding-left: 4%;
	padding-right: 4%;
	display: inline-block;
	vertical-align: middle;
}
 .img-fluid {
    max-width: 100%;
    height: 80%;
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
                                    <input type="date" required value="2017-06-01" min="1950-04-01" max="2022-04-30" class="form-control form-control-input" id="userdob" runat="server">
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
                                    <input type="number" min="6" max="12" maxlength="2" title="Grade" pattern="[0-9]{2}" required class="form-control form-control-input" id="userGrade" runat="server" placeholder="Grade">
                                </div>
                            </div>
                            <div id="status" runat="server">

                            </div>
                           
                            <asp:Button  style="color: black; float: left" class="btn btn-primary mt-3" runat="server" Text="Update Details" ID="UpdateProfile" OnClick="UpdateProfile_Click"  />                           
                        </div>
                        <div class="col-lg-6" data-aos="fade-down">
                            <div class="container" id="displayCard" runat="server">
								
								  </div>
                            <br />
                                <a id="openModal" runat="server" class='mdc-button mdc-button--outlined' style="text-align: start; text-decoration: none; margin-left: 25px;" data-toggle='modal' data-target='#form'>Add card +</a> 
                          
            
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
                    <!--add card Modal-->
	<form class="needs-validation" novalidate>
                            <div class='modal fade' id='form' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>
                                <div class='modal-dialog modal-dialog-centered' role='document'>
                                    <div class='modal-content' style="width: 1900px;height: 500px;">
                                        <div class='modal-header border-bottom-0'>
                                            <h5 class='modal-title' id='exampleModalLabel'>Payment information:</h5>
                                            <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
                                        </div>
                                            <div class='modal-body' style="width:600px">
                                               	<div class="demo">
		                                            <div class="payment-card">
			                                            <div class="bank-card"><br /><br /><br /><br />
				                                            <div class="bank-card__side bank-card__side_front">
					                                            <div class="bank-card__inner">
						                                            <label class="bank-card__label bank-card__label_fullwidth">
							                                            <span class="bank-card__hint">Holder of card</span>
							                                            <input type="text" class="bank-card__field" placeholder="J Doe" id="cardHolder" runat="server" title="Enter a Valid Name" pattern="[A-Za-z, ]{2,}" name="holder-card" required>
						                                            </label>
					                                            </div>
					                                            <div class="bank-card__inner">
						                                            <label class="bank-card__label bank-card__label_fullwidth">
							                                            <span class="bank-card__hint">Card Number</span>
							                                            <input type="text" class="bank-card__field" placeholder="xxxx-xxxx-xxxx-xxxx" id="cardNumber" runat="server"  maxlength="16" title="Enter valid Card number" pattern="[0-9]{16}" name="number-card" required>
						                                            </label>																	
					                                            </div>          
					                                            <div class="bank-card__inner">
						                                            <span class="bank-card__caption">Expiration Date</span>
					                                            </div>
					                                            <div class="bank-card__inner">
						                                            <label class="bank-card__label">
							                                            <span class="bank-card__hint">Month</span>
							                                            <input type="text" class="bank-card__field" placeholder="MM" maxlength="2" id="expMonth" runat="server" title="Expiration Month" pattern="[0-9]{2}" name="mm-card" required>
						                                            </label>
						                                            <span class="bank-card__separator">/</span>
						                                            <label class="bank-card__label">
							                                            <span class="bank-card__hint">Year</span>
							                                            <input type="text" class="bank-card__field" placeholder="YY" maxlength="2" id="expYear" runat="server" title="Expiration year" pattern="[0-9]{2}" name="year-card" required>
						                                            </label>
																	<div style="float: right;">
																		<i class="fab fa-cc-mastercard fa-4x"></i>					                                           
					                                            </div>
					                                            </div>					
				                                            </div>
				                                            <div class="bank-card__side bank-card__side_back">
					                                            <div class="bank-card__inner">
						                                            <label class="bank-card__label">
							                                            <span class="bank-card__hint">CVV</span>
							                                            <input type="text" class="bank-card__field" placeholder="CVV" maxlength="3" id="CVV" runat="server" title="This is found at the back of your card."  pattern="[0-9]{3}" name="cvc-card" required>
						                                            </label>
					                                            </div>
																<div><i class="fab fa-cc-visa fa-4x"></i></div>  
				                                            </div>				
			                                            </div>
		                                            </div>
	                                            </div>
                                            </div>
                                        
                                            <div class='modal-footer border-top-0 d-flex justify-content-center'>
												<button type="button" class='mdc-button mdc-button--raised' onclick="addCard()" >Add This Card</button>
                                            </div>
                                    </div>
                                </div>
                            </div>
		<Script>
            function addCard() {
                if (!($("#ContentPlaceHolder1_cardHolder").val() === "" || $("#ContentPlaceHolder1_CVV").val() === "" || $("#ContentPlaceHolder1_expMonth").val() === "" || $("#ContentPlaceHolder1_expYear").val() === "" || $("#ContentPlaceHolder1_cardNumber").val() === "")) {
                    const inpCH = document.getElementById("ContentPlaceHolder1_cardHolder");
                    const inpCV = document.getElementById("ContentPlaceHolder1_CVV");
                    const inpCN = document.getElementById("ContentPlaceHolder1_cardNumber");
                    const inpEm = document.getElementById("ContentPlaceHolder1_expMonth");
                    const inpEY = document.getElementById("ContentPlaceHolder1_expYear");
                    if (!(inpCH.checkValidity() && inpCV.checkValidity() && inpCN.checkValidity() && inpEm.checkValidity() && inpEY.checkValidity())) {
                        alertToast("error", "oops...Invalid Card.....");
                    } else {
                        var Cuuid = uuidv4();
                        firebase.database().ref('Cards/' + firebase.auth().currentUser.uid + "/" + Cuuid).set({
                            CardHolder: $("#ContentPlaceHolder1_cardHolder").val(),
                            Ccvv: $("#ContentPlaceHolder1_CVV").val(),
                            CexpMonth: $("#ContentPlaceHolder1_expMonth").val(),
                            CexpYear: $("#ContentPlaceHolder1_expYear").val(),
                            cardNumber: $("#ContentPlaceHolder1_cardNumber").val(),
                            Cuid: Cuuid
                        }).then(function onSuccess(res) {
                            setTimeout(function () {
                                document.location.reload(true);
                            }, 1000);
                        }).catch(function onError(err) {
                            alertToast("error", "oops...Failed to add card");
                        });
                    }
                } else {
                    alertToast("error", "oops...Invalid Card");
                }
            
            };
            $('body').on("click", "span[name=remove]", function () {
                firebase.database().ref('Cards/' + firebase.auth().currentUser.uid + "/" + $(this).data('cuid')).remove()
                    .then(function () {
                        setTimeout(function () {
                            document.location.reload(true);
                        }, 1000);
                })
                .catch(function (error) {
                    alertToast("error", "oops...Failed to Remove card");
                });
            });
        </Script>
		</form>
</asp:Content>
