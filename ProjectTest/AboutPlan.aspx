<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="AboutPlan.aspx.cs" Inherits="ProjectTest.AboutPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <form id="form1" runat="server">
         <!-- About Plan -->
    <section class="plans d-flex align-items-center py-5" id="plans">
        <div class="container text-light" >
          
            <div class="text-center pb-4">
               <br /><br />  <br />
                <p>ABOUT PLAN</p>
            </div>
            <div class="row gy-4" data-aos="zoom-in">
                <div class="col-lg-4">
                    <div class="card bg-transparent px-4">
                        <h4 class="py-2" id="planName" runat="server"></h4>
                        <p class="py-3" id="planDes" runat="server"></p>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p id="packItem1" runat="server"></p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p id="packItem2" runat="server"></p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p id="packItem3" runat="server"></p>
                        </div>
                        <div class="block d-flex align-items-center">
                            <p class="pe-2"><i class="far fa-check-circle fa-1x"></i></p>
                            <p id="packItem4" runat="server"></p>
                        </div>
                        <h4 class="py-3" id="planPrice" runat="server">
                        </h4>
                        <div class="my-3">
                            <asp:Button ID="AddToCart" class="btn" runat="server" OnClick="AddToCart_Click" Text="Add Subscription to Cart" />
                        </div>
                    </div>  
                </div>
                <div class="col-lg-8 d-flex align-items-center" data-aos="fade-down" id="planImage" runat="server">
                           
                        </div>

            </div> <!-- end of row -->
            <br />  <br /><br />  <br /><br />  <br />
        </div> <!-- end of container -->
 <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Subscription</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          You have a <b id="cartplan" runat="server"></b> in your cart, remove it to add <b id="subscription" runat="server"></b> instead.
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" style="color: black;" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
    </section> <!-- end of plans -->
         </form>
</asp:Content>
