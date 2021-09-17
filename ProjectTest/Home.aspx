<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectTest.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          
 <!-- Home -->
    <section class="home py-5 d-flex align-items-center" id="header">
        <div class="container text-light py-5"  data-aos="fade-right"> 
            <h1 class="headline">The <span class="home_text">Mind Academy</span><br>Tutoring Portal Created Just For You!</h1>
            <p class="para para-light py-3">Get premium lessons at the comfort of your home. What are you waiting for? The time
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
                <a class="btn" href="#plans">View Subscription Plans</a>
            </div>
        </div> <!-- end of container -->
    </section> <!-- end of home -->


    <!-- Information -->
    <section class="information">
        <div class="container-fluid">  
            <div class="row text-light">
                <div class="col-lg-4 text-center p-5" data-aos="zoom-in">
                    <i class="fas fa-tachometer-alt fa-3x p-2"></i>
                    <h4 class="py-3">Download 1 GBPS</h4>
                    <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                </div>
                <div class="col-lg-4 text-center p-5"  data-aos="zoom-in">
                    <i class="fas fa-clock fa-3x p-2"></i>
                    <h4 class="py-3">99% Internet Uptime</h4>
                    <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                </div>
                <div class="col-lg-4 text-center p-5 text-dark"  data-aos="zoom-in"> 
                    <i class="fas fa-headset fa-3x p-2"></i>
                    <h4 class="py-3">24/7 Support </h4>
                    <p class="para-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam odit consequatur doloribus natus in suscipit!</p>
                </div>
            </div>
        </div> <!-- end of container -->
    </section> <!-- end of information -->
    

    <!-- About -->
    <section class="about d-flex align-items-center text-light py-5" id="about">
        <div class="container" >
            <div class="row d-flex align-items-center">
                <div class="col-lg-7" data-aos="fade-right">
                    <p>ABOUT US</p>
                    <h1>We are top internet <br> service company</h1>
                    <p class="py-2 para-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Non sed accusantium aut dolores inventore architecto modi cupiditate eligendi corporis, illum illo culpa. Reiciendis, molestias. Illum voluptatum quisquam ad veritatis dolorem.</p>
                    <p class="py-2 para-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Non sed accusantium aut dolores inventore architecto modi cupiditate eligendi corporis, illum illo culpa. Reiciendis, molestias. Illum voluptatum quisquam ad veritatis dolorem.</p>

                    <div class="my-3">
                        <a class="btn" href="#your-link">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-5 text-center py-4 py-sm-0" data-aos="fade-down"> 
                    <img class="img-fluid" src="./assets/images/about.jpg" alt="about" >
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of about -->



    <!-- Work -->
    <section class="work d-flex align-items-center py-5" >
        <div class="container-fluid text-light">
            <div class="row">
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-right">
                    <img class="img-fluid" src="./assets/images/work.jpg" alt="work">        
                </div>
                <div class="col-lg-5 d-flex align-items-center px-4 py-3" data-aos="">
                    <div class="row">
                        <div class="text-center text-lg-start py-4 pt-lg-0">
                            <p>OUR WORK</p>
                            <h2 class="py-2">Explore unlimited possibilities</h2>
                            <p class="para-light">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dignissimos dicta mollitia totam explicabo obcaecati quia laudantium repudiandae.</p>
                        </div>
                        <div class="container" data-aos="fade-up">
                            <div class="row g-5">
                                <div class="col-6 text-start" >
                                    <i class="fas fa-briefcase fa-2x text-start"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="1258" data-purecounter-duration="3">1</h2>
                                    <p>PROJECTS COMPLETED</p>
                                </div>
                                <div class="col-6" >
                                    <i class="fas fa-award fa-2x"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="3">1</h2>
                                    <p>AWARDS</p>
                                </div>
                                <div class="col-6">
                                    <i class="fas fa-users fa-2x"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="1255" data-purecounter-duration="3">1</h2>
                                    <p>CUSTOMER ACTIVE</p>
                                </div>
                                <div class="col-6">
                                    <i class="fas fa-clock fa-2x"></i>
                                    <h2 class="purecounter" data-purecounter-start="0" data-purecounter-end="1157" data-purecounter-duration="3">1</h2>
                                    <p>GOOD REVIEWS</p>
                                </div>
                            </div>
                        </div> <!-- end of container -->
                    </div> <!-- end of row -->
                </div> <!-- end of col-lg-5 -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of work -->


    <!-- Testimonials -->
    <div class="slider-1 testimonial text-light d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="text-center w-lg-75 m-auto pb-4">
                    <p>TESTIMONIALS</p>
                    <h2 class="py-2">What Our Clients Says</h2>
                    <p class="para-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Adipisci esse facilis vel, neque ipsa mollitia impedit, commodi ab illo dignissimos, voluptatum quae amet sed tenetur dolores reprehenderit laudantium quo sint.</p>
                </div>
            </div> <!-- end of row -->
            <div class="row p-2" data-aos="zoom-in">
                <div class="col-lg-12">

                    <!-- Card Slider -->
                    <div class="slider-container">
                        <div class="swiper-container card-slider">
                            <div class="swiper-wrapper">
                                
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                    
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-1.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Marlene Visconte</h6>
                                                <p>General Manager - Scouter</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-2.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>John Spiker</h6>
                                                <p>Team Leader - Vanquish</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-3.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <h6>Stella Virtuoso</h6>
                                                <p>Design Chief - Upscale</p>
                                            </div>
                                        </div>
                                    </div>      
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->
        
                                <!-- Slide -->
                                <div class="swiper-slide">
                                    <div class="testimonial-card p-4">
                                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laboriosam commodi officia laborum qui iste quidem!</p>
                                        <div class="d-flex pt-4">
                                            <div>
                                                <img class="avatar" src="./assets/images/testimonial-4.jpg" alt="testimonial">
                                            </div>
                                            <div class="ms-3 pt-2">
                                                <p>Mike tim</p>
                                                <p>Investor - TechGroww</p>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                            </div> <!-- end of swiper-wrapper -->
        
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <!-- end of add arrows -->
        
                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of card slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of testimonials -->


    <!-- Newsletter -->
    <section class="newsletter text-light py-5">
        <div class="container">
            <div class="row" >
                <div class="col-lg-6 text-center text-lg-start" data-aos="fade-right">
                    <h4 class="py-1">Subscribe to our Newsletter</h4>
                    <p class="para-light">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolor deleniti nobis amet accusamus debitis facilis quibusdam officia laborum nesciunt. Nihil.</p>
                </div>
                <div class="col-lg-6 d-flex align-items-center" data-aos="fade-down">
                    <div class="input-group my-3">
                        <input type="text" class="form-control p-2" placeholder="Enter your email address" aria-label="Recipient's email">
                        <button class="btn-secondary text-light" type="button">Subscribe</button>
                    </div>
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of newsletter -->


   
    <!-- Location -->
    <section class="location text-light py-5">
        <div class="container" data-aos="zoom-in">
            <div class="row">
                <div class="col-lg-3 d-flex align-items-center">
                    <div class="p-2"><i class="far fa-map fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>ADDRESS</h6>
                        <p>Teuku Umar ST. 1919</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center" >
                    <div class="p-2"><i class="fas fa-mobile-alt fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>CALL FOR QUERY</h6>
                        <p>(800) 265  216 2020</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center" >
                    <div class="p-2"><i class="far fa-envelope fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>SEND US MESSAGE</h6>
                        <p>infodemofile@example.com</p>
                    </div>
                </div>
                <div class="col-lg-3 d-flex align-items-center" >
                    <div class="p-2"><i class="far fa-clock fa-3x"></i></div>
                    <div class="ms-2">
                        <h6>OPENING HOURS</h6>
                        <p>09:00 AM - 18:00 PM</p>
                    </div>
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </section> <!-- end of location -->

        <!-- Scripts -->
    <script src="./js/bootstrap.min.js"></script><!-- Bootstrap framework -->
    <script src="./js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
    <script src="./js/swiper.min.js"></script><!-- Swiper for image and text sliders -->
    <script src="./js/aos.js"></script><!-- AOS on Animation Scroll -->

   
    

</asp:Content>
