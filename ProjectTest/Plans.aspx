<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Plans.aspx.cs" Inherits="ProjectTest.Plans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Plans -->
    <section class="plans d-flex align-items-center py-5" id="plans">
        <div class="container text-light" >          
            <div class="text-center pb-4">
                 <br /><br />  
                <h2 class="py-2">Explore unlimited possibilities</h2>
                <p class="para-light">At Mind Academy, our priority is to improve the overall return on investment in education by helping students learn more in less time and at a lower cost.
                    We come togather virtually from various places to collaborate and innovate while having fun. 
                </p>
            </div>
            <div class="row gy-4" data-aos="zoom-in" id="displayPlans" runat="server">

                <!-- displaying plans from DB here-->
              
            </div> <!-- end of row -->
      
        </div> <!-- end of container -->
   
    </section> <!-- end of plans -->

</asp:Content>
