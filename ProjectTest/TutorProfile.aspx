<%@ Page Title="" Language="C#" MasterPageFile="~/MasterLayout.Master" AutoEventWireup="true" CodeBehind="TutorProfile.aspx.cs" Inherits="ProjectTest.TutorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://use.fontawesome.com/5a0833811c.js"></script>
    <style>
        .emp-profile {
            padding: 3%;
            margin-top: 3%;
            margin-bottom: 3%;
            border-radius: 0.5rem;
            background: #fff;
        }

        .profile-img {
            text-align: center;
        }

            .profile-img img {
                width: 70%;
                height: 100%;
            }

            .profile-img .file {
                position: relative;
                overflow: hidden;
                margin-top: -20%;
                width: 70%;
                border: none;
                border-radius: 0;
                font-size: 15px;
                background: #212529b8;
            }

                .profile-img .file input {
                    position: absolute;
                    opacity: 0;
                    right: 0;
                    top: 0;
                }

        .profile-head h5 {
            color: #333;
        }

        .profile-head h6 {
            color: #1c262f;
        }

        .profile-edit-btn {
            border: none;
            border-radius: 1.5rem;
            width: 70%;
            padding: 2%;
            font-weight: 600;
            color: #6c757d;
            cursor: pointer;
        }

        .fa {
            font-size: 12px;
            color: #818182;
            margin-top: 5%;
        }

            .fa span {
                color: #495057;
                font-size: 15px;
                font-weight: 600;
            }

        .profile-head .nav-tabs {
            margin-bottom: 5%;
        }

            .profile-head .nav-tabs .nav-link {
                font-weight: 600;
                border: none;
            }

                .profile-head .nav-tabs .nav-link.active {
                    border: none;
                    border-bottom: 2px solid #1c262f;
                }

        .profile-work {
            padding: 14%;
            margin-top: -15%;
        }

            .profile-work p {
                font-size: 12px;
                color: #818182;
                font-weight: 600;
                margin-top: 10%;
            }

            .profile-work a {
                text-decoration: none;
                color: #495057;
                font-weight: 600;
                font-size: 14px;
            }

            .profile-work ul {
                list-style: none;
            }

        .profile-tab label {
            font-weight: 600;
        }

        .profile-tab p {
            font-weight: 600;
            color: #1c262f;
        }

        .row-striped:nth-of-type(odd) {
            background-color: #efefef;
            border-left: 4px #000000 solid;
        }

        .row-striped:nth-of-type(even) {
            background-color: #ffffff;
            border-left: 4px #efefef solid;
        }

        .row-striped {
            padding: 15px 0;
        }

        .align-center {
            text-align: center;
        }

        .hash-list {
            display: block;
            padding: 0;
            margin: 0 auto;
        }

        @media (min-width: 768px) {
            .hash-list.cols-3 > li:nth-last-child(-n+3) {
                border-bottom: none;
            }
        }

        @media (min-width: 768px) {
            .hash-list.cols-3 > li {
                width: 33.3333%;
            }
        }

        .hash-list > li {
            display: block;
            float: left;
            border-right: 1px solid rgba(0, 0, 0, 0.2);
            border-bottom: 1px solid rgba(0, 0, 0, 0.2);
        }

        .pad-30, .pad-30-all > * {
            padding: 30px;
        }

        img {
            border: 0;
        }

        .mgb-20, .mgb-20-all > * {
            margin-bottom: 20px;
        }

        .wpx-100, .wpx-100-after:after {
            width: 100px;
        }

        .img-round, .img-rel-round {
            border-radius: 50%;
        }

        .padb-30, .padb-30-all > * {
            padding-bottom: 30px;
        }

        .mgb-40, .mgb-40-all > * {
            margin-bottom: 40px;
        }

        .align-center {
            text-align: center;
        }

        [class*="line-b"] {
            position: relative;
            padding-bottom: 20px;
            border-color: #E6AF2A;
        }

        .fg-text-d, .fg-hov-text-d:hover, .fg-active-text-d.active {
            color: #222;
        }

        .font-cond-b {
            font-weight: 700 !important;
        }

        .card {
            width: 350px;
            background-color: #efefef;
            border: none;
            cursor: pointer;
            transition: all 0.5s
        }

        .image img {
            transition: all 0.5s
        }

        .card:hover .image img {
            transform: scale(1.5)
        }

        .btn {
            height: 140px;
            width: 140px;
            border-radius: 50%
        }

        .name {
            font-size: 22px;
            font-weight: bold
        }

        .idd {
            font-size: 14px;
            font-weight: 600
        }

        .idd1 {
            font-size: 12px
        }

        .number {
            font-size: 22px;
            font-weight: bold
        }

        .follow {
            font-size: 12px;
            font-weight: 500;
            color: #444444
        }

        .btn1, .btn2 {
            height: 40px;
            width: 150px;
            border: none;
            background-color: #000;
            color: #aeaeae;
            font-size: 15px
        }

        .text span {
            font-size: 13px;
            color: #545454;
            font-weight: 500
        }

        .icons i {
            font-size: 19px
        }

        hr .new1 {
            border: 1px solid
        }

        .join {
            font-size: 14px;
            color: #a0a0a0;
            font-weight: bold
        }

        .date {
            background-color: #ccc
        }

        .checked {
            color: orange;
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
                        <h1>Tutor Profile</h1>
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
            <div class="emp-profile">
                <div class="row">
                    <div class="col-md-4">

                        <div class="card p-4">
                            <div class=" image d-flex flex-column justify-content-center align-items-center">
                                <button class="btn btn-secondary">
                                    <img src="https://i.imgur.com/wvxPV9S.png" height="100" width="100" /></button>
                                <div class=" d-flex mt-2">
                                    <button class="btn1 btn-dark">Book a lesson</button>
                                </div>
                                <div class=" d-flex mt-2">
                                    <button class="btn2 btn-dark">Send Message</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                            <h5 id="names" runat="server"></h5>
                            <h6 id="location" runat="server"></h6>
                            <span><i class="fa fa-graduation-cap" aria-hidden="true"><span id="tertiary" runat="server"></span></i></span>
                            <br />
                            <span><i class="fa fa-dot-circle-o" aria-hidden="true"><span id="online" runat="server"></span></i></span>
                            <br />
                            <span><i class="fa fa-dot-circle-o" aria-hidden="true"><span id="inPerson" runat="server"></span></i></span>
                            <br />
                            <span><i class="fa fa-commenting-o" aria-hidden="true"><span id="language" runat="server"></span></i></span>
                            <br />
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="schedule-tab" data-toggle="tab" href="#schedule" role="tab" aria-controls="schedule" aria-selected="false">Schedule</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="subjects-tab" data-toggle="tab" href="#subjects" role="tab" aria-controls="subjects" aria-selected="false">Subjects</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <a href="TutorRegister.aspx" style="text-decoration:none" class="profile-edit-btn" name="btnAddMore" >Edit Profile</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <p>TUTOR SKILLS</p>
                            <a href="#">Coffee Drinker</a><br />
                            <a href="#">Fluent in English</a><br />
                            <a href="#">Patient</a><br />
                            <a href="#">Adapt to student</a><br />
                            <a href="#">Friendly</a><br />
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="col-md-6" id="about" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="schedule" role="tabpanel" aria-labelledby="schedule-tab">
                                <div class="container">
                                    <div class="row row-striped">
                                        <div class="col-2 text-right">
                                            <h1 class="display-4"><span class="badge badge-secondary">23</span></h1>
                                            <h2>OCT</h2>
                                        </div>
                                        <div class="col-10">
                                            <h3 class="text-uppercase"><strong>Online Session</strong></h3>
                                            <ul class="list-inline">
                                                <li class="list-inline-item"><i class="fa fa-calendar-o" aria-hidden="true"></i>Monday</li>
                                                <li class="list-inline-item"><i class="fa fa-clock-o" aria-hidden="true"></i>12:30 PM - 2:00 PM</li>
                                                <li class="list-inline-item"><i class="fa fa-location-arrow" aria-hidden="true"></i>Online</li>
                                            </ul>
                                            <p>Maths litearacy problem solving and techniques</p>
                                        </div>
                                    </div>
                                    <div class="row row-striped">
                                        <div class="col-2 text-right">
                                            <h1 class="display-4"><span class="badge badge-secondary">27</span></h1>
                                            <h2>OCT</h2>
                                        </div>
                                        <div class="col-10">
                                            <h3 class="text-uppercase"><strong>In Person Session</strong></h3>
                                            <ul class="list-inline">
                                                <li class="list-inline-item"><i class="fa fa-calendar-o" aria-hidden="true"></i>Friday</li>
                                                <li class="list-inline-item"><i class="fa fa-clock-o" aria-hidden="true"></i>2:30 PM - 4:00 PM</li>
                                                <li class="list-inline-item"><i class="fa fa-location-arrow" aria-hidden="true"></i>Room 4019</li>
                                            </ul>
                                            <p>Art creative, music notes and music composition.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                <div class="container">
                                    <ul class="hash-list cols-3 cols-1-xs pad-30-all align-center text-sm">
                                        <li>
                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
                                            <p class="fs-110 font-cond-l" contenteditable="false">" I really like having lessons with Mbali as she helps me improve a lot in my courseworks'. She explains points clearly and gives her best effort in helping me! "</p>
                                            <h5 class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false">Boitshepo M</h5>
                                        </li>
                                        <li>
                                            <img src="https://bootdey.com/img/Content/avatar/avatar4.png" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
                                            <p class="fs-110 font-cond-l" contenteditable="false">"Great lessons so far with Mbali. Very helpful and always happy to send work sheets before a lesson. My son says he is learning a lot. Thank you. "</p>
                                            <h5 class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false">Nkanyiso B</h5>
                                        </li>
                                        <li>
                                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
                                            <p class="fs-110 font-cond-l" contenteditable="false">" We've managed to finish off the topic of diabetes, really went into a lot of depth, and I'm happy with the progress made ! "</p>
                                            <h5 class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false">Thalu R</h5>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="subjects" role="tabpanel" aria-labelledby="subjects-tab">
                                <ol class="subject-list">
                                    <li>Life Orientation</li>
                                    <li>Arts & Culture</li>
                                    <li>Maths Literacy</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end of container -->
        <!-- end of ex-basic-1 -->
        <!-- end of basic -->
    </form>
</asp:Content>
