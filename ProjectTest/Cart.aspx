<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ProjectTest.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <!-- Emailjs CDN-->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
        <script type="text/javascript">
            (function () {
                emailjs.init("user_InRqQbUTsgjOHV3lAlmq9");
            })();
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <!-- Header -->
        <header class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <h1>Your Cart</h1>
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
                    <div class="row">
                        <div class="col-lg-8" data-aos="fade-right">
                            <div class="card bg-light text-dark">
                                    <div class="card bg-light text-dark">
                                        <div id="emptyCart" runat="server">
                                            <h4>Your Cart is empty.</h4>
                                             <h1><a style="color:initial" href="Plans.aspx">
                                               <i class="fas fa-cart-arrow-down"></i>  </a>
                                             </h1>

                                        </div>
                                    <div class="card-body" id="Remove" runat="server">
                                      <h4 class="card-title" style="float: left" runat="server" id="name"></h4><span style="float: right;"><b id ="priceForPlan" runat="server"></b></span>
                                        <br />                     
                                        <br />
                                        <div style="float:left">
                                            <ul style="text-align:start">
                                                <li ><i class="fas fa-arrow-circle-right"></i> <p id ="packageItem1" runat="server" style="display:inline-block"> </p> </li>
                                                <li ><i class="fas fa-arrow-circle-right"></i> <p id ="packageItem2" runat="server" style="display:inline-block"> </p> </li>
                                                <li ><i class="fas fa-arrow-circle-right"></i> <p id ="packageItem3" runat="server" style="display:inline-block"> </p> </li>
                                                <li ><i class="fas fa-arrow-circle-right"></i> <p id ="packageItem4" runat="server" style="display:inline-block"> </p> </li>
                                              </ul>
                                        </div>
                                        <div style="float: right">
                                            <%-- <a class="btn-danger btn-sm" href="Cart.aspx" style="text-decoration-line:none;position: absolute;bottom: 10px;right: 10px;">--%>                                            <%--<span ><i class="fas fa-trash"></i><b id ="B1" runat="server"> Remove</b></span>--%><%--</a>--%>
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="remove_Click" class="btn-danger btn-sm" style="text-decoration-line:none;position: absolute;bottom: 10px;right: 10px;">
                                                <i class="fas fa-trash"></i><b> Remove</b></asp:LinkButton>
                                           
                                        </div>
                                    </div>
                                  </div>                           
                              </div>
                        </div>
                        <div class="col-lg-4 d-flex" data-aos="fade-down">
                            <div class="container">
                              <div class="card bg-light text-dark">
                                <div class="card-body">
                                  <h4 class="card-title" style="float: left">Cart Summary</h4>
                                    <br />
                                    <div >
                                        <br />
                                     <span style="float: left;" id="items" runat="server"></span>  <span style="float: right;"><b id ="price" runat="server"></b></span>
                                    </div>
                                  <asp:Button style="color: orangered;" class="btn btn-primary form-control" ID="Checkout" runat="server" OnClick="Checkout_Click" Text="Checkout" Font-Bold="True" />                                
                                </div>
                              </div>
                                <br />
                              <div class="card bg-light text-dark">
                                    <div class="card-body">                                     
                                      <div>
                                          <ul style="text-align:start">
                                          <li><i class="fas fa-lock"></i> We provide secure checkouts.</li>
                                          <li><i class="fas fa-bolt"></i> Same time payment approvals.</li>
                                          <li><i class="fas fa-shield-alt"></i> Reliable payment gateways.</li>
                                          </ul>
                                      </div>
                                    </div>
                              </div>
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
        <!-- The Modal -->
  <div class="modal" id="myCheckout">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">SUCCESS!</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          You have  successfuly purchased a <b id="cartplan" runat="server"></b>. This Subscription Plan is Valid untill <b id="subscriptionValid" runat="server"></b>. <strong>Thank You! for choosing Mind Academy.</strong> Enjoy! <mark style="background-color:cyan">#HappyLearning</mark>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" style="color: black;" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
        <script type="text/javascript">
            function sendReceipt(Email,Price,EndDate,Plan) {
                var templateParams = {
                    price: Price,
                    endDate: EndDate,
                    plan: Plan,
                    email: Email,
                };
                console.log($("#myAccount").val());
                emailjs.send('service_xj13z4x', 'template_jn2wybu', templateParams)
                .then(function (response) {
                    console.log('SUCCESS!', response.status, response.text);
                }, function (error) {
                    console.log('FAILED...', error);
                });
            }
        </script>
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
