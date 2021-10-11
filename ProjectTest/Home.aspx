<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectTest.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Home -->
    <section class="home py-5 d-flex align-items-center" id="header">
        <div class="container text-light py-5" data-aos="fade-right">
            <h1 class="headline">The <span class="home_text">Mind Academy</span><br>
                Tutoring Portal Created Just For You!</h1>
            <p class="para para-light py-3">
                Get premium lessons at the comfort of your home. What are you waiting for? The time
                is NOW. No more paying for transport to go to a saturday school. Mind Academy Got Your Back. The number one tutoring portal you can get 
                at affordable rates.
            </p>
            <div class="d-flex align-items-center">
                <p class="p-2"><i class="fas fa-laptop-house fa-lg"></i></p>
                <p>100% Online Tutoring</p>
            </div>
            <div class="d-flex align-items-center">
                <p class="p-2"><i class="fas fa-wifi fa-lg"></i></p>
                <p>24/7 Support</p>
            </div>
            <div class="my-3">
                <a class="btn" href="Plans.aspx">View Subscription Plans</a>
            </div>
        </div>
        <!-- end of container -->
    </section>
    <!-- end of home -->
    <!-- About -->
    <section class="about d-flex align-items-center text-light py-5" id="about">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-lg-7" data-aos="fade-right">
                    <p>ABOUT US</p>
                    <h2>We are a top, affordable tutoring platform for both<br>
                        basic and higher education</h2>
                    <p class="py-2 para-light">Mind Academy offers extra classes without any restrictions. We offer practise exercises, directional videos and custom made learning dashboard to empower both learners and students to learn at their own pace, anywhere it suits them.</p>
                    <p class="py-2 para-light">Centre of attention being skill mastery to come to the aid of learners to form strong foundations. Only the sky is the limit!</p>
                    <div class="my-3">
                        <a class="btn" href="Plans.aspx">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-5 text-center py-4 py-sm-0" data-aos="fade-down">
                    <img class="img-fluid" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Fabout.jpg?alt=media&token=d28a4bd6-7598-42e1-92fd-9d4fe12b12f0" alt="about">
                </div>
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </section>
    <!-- end of about -->
    <!-- Testimonials -->
    <div class="slider-1 testimonial text-light d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="text-center w-lg-75 m-auto pb-4">
                    <p>TESTIMONIALS</p>
                    <h2 class="py-2">What Our Clients Says</h2>
                    <p class="para-light">These are people who find Mind Academy to be a great platform for both students and tutors. Join us today and see for yourself.</p>
                </div>
            </div>
            <!-- end of row -->
            <div class="row p-2" data-aos="zoom-in">
                <div class="col-lg-12">
                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider">
                            <div class="swiper-wrapper">
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4" >
                                        <p>At first I thought "Online tutoring" was not going to work, little did I know that this is a chance to revolutionise learning and make it exctiting.</p>

                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Ftestimonial-1.jpg?alt=media&token=a6e05ddc-111a-4c9c-8e97-44d749adc1ee" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Marlene Visconte</h6>
                                                <p>Student</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end of swiper-slide -->
                                <!-- end of slide -->
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Mind Academy changed my life, I can recommend them to anyone any day who wants to learn more without spending so much. So if you were having second thoughts, just try once it won't be your last!</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Ftestimonial-2.jpg?alt=media&token=8dbbd036-766f-4215-816a-240d2e38cb2a" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>John Spiker</h6>
                                                <p>Student</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end of swiper-slide -->
                                <!-- end of slide -->
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Since the day i joined Mind Academy I am now very confident that I am gonna ace my final exam because Mind Academy has prepared me for anything.</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Ftestimonial-3.jpg?alt=media&token=75d91b1f-2349-41b5-8400-d9283d005923" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Stella Larry</h6>
                                                <p>Grade 11 Student</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end of swiper-slide -->
                                <!-- end of slide -->
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>I'm so glad to be part of a community that is willing to do whatever it takes to help students pursue their dreams without worrying if they will qualify to go to college or not.</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="https://firebasestorage.googleapis.com/v0/b/mind-academy-8357a.appspot.com/o/images%2Ftestimonial-4.jpg?alt=media&token=da90c991-5821-41eb-bada-3fb35d98ab56" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <p>James Botha</p>
                                                <p>Tutor</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end of swiper-slide -->
                                <!-- end of slide -->
                            </div>
                            <!-- end of swiper-wrapper -->
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->
                        </div>
                        <!-- end of swiper-container -->
                    </div>
                    <!-- end of slider-container -->
                    <!-- end of card slider -->
                </div>
                <!-- end of col -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </div>
    <!-- end of testimonials -->
    <!-- Location -->
    <section class="location text-light py-5">
        <div class="container" data-aos="zoom-in">
            <div class="row">
                <div class="col-lg-3 d-flex align-items-center">
                    <div class="p-2"><i class="far fa-map fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>ADDRESS</h6>
                        <p>University of Johannesburg, APK </p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center">
                    <div class="p-2"><i class="fas fa-mobile-alt fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>CALL FOR QUERY</h6>
                        <p>(+27) 015 974 5540</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center">
                    <div class="p-2"><i class="far fa-envelope fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>SEND US MESSAGE</h6>
                        <p>theinimitiblem@gmail.com</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center">
                    <div class="p-2"><i class="far fa-clock fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>OPENING HOURS</h6>
                        <p>09:00 AM - 16:00 PM</p>
                    </div>
                </div>
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container -->
    </section>
    <!-- end of location -->
</asp:Content>
