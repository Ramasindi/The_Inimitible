<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="ProjectTest.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <!-- Services -->
    <section class="services d-flex align-items-center py-5" id="services">
        <div class="container text-light">
            <div class="text-center pb-4" >
                <br /><br />
                <p class="service" id="service">OUR SERVICES</p> 
                <h2 class="py-2" id="grades">Enhance your mind and improve your grades</h2>
            </div>

                <div class="row gy-4 py-2" style="display: flex" data-aos="zoom-in">
              <div class="col-lg-4" >
                       <a class="btn" href="PastPapers.aspx" style="height: 100%"><div class="card bg-transparent">
                       <img class="img-fluid d-none d-lg-block" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fpp.jpg?alt=media&token=d579fdab-0ae7-4100-b490-620195dc86ea" alt="no image">  
                        <h4 class="py-2">Past Papers</h4>
                       
                      
                       <p class="para-light">Access all past papers and memorandums for any subject. Test yourself and see where you lacking. </p>
                    </div></a>
                </div>
            


                <div class="col-lg-4">
                       <a class="btn" href="HomeworkHelper.aspx" style="height: 100%"> <div class="card bg-transparent" >
                         <img class="img-fluid d-none d-lg-block" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fdo.jpg?alt=media&token=dc64330d-022a-4b54-898b-848c656d9bcf" alt="no image"> 
                        <h4 class="py-2"> Homework Helper</h4>
                        <p class="para-light">Tutor at your disposal for any homework problem of any subject. Say goodbye to incomplete work.</p>
                    </div>     </a>               
                </div>

                <div class="col-lg-4">
                       <a class="btn" href="MentorshipProgramme.aspx" style="height: 100%"> <div class="card bg-transparent">
                         <img class="img-fluid d-none d-lg-block" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fl.jpg?alt=media&token=14c36d79-c9f7-4e06-9559-e43695d639f8" alt="no image"> 
                        <h4 class="py-2">Mentorship Programme</h4>
                        <p class="para-light">Feeling demotivated? Not knowing how to organise your daily tasks? The Mind Academy got you covered. Imagine having
                            your own personal  mentor to guide you, organize your tasks, help you study smart, develop a daily routine and gives you reminders of the tasks you
                            have to complete. 
                        </p>
                    </div></a>                  
                </div>

            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of services -->
</asp:Content>
