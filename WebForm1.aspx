﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="English_Learning1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!doctype html>
    <html>

    <asp:Label ID="lblWelcome" runat="server" Font-Size="Large" Text="Welcome to the site!"></asp:Label>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Topic Listing Bootstrap 5 Template</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Open+Sans&display=swap" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">
        <link href="css/templatemo-topic-listing.css" rel="stylesheet">
        <!--

TemplateMo 590 topic listing

https://templatemo.com/tm-590-topic-listing

-->
    </head>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <body>
        <main>
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand" href="index.html"><i class="bi-back"></i><span>Learn English</span> </a>
                    <div class="d-lg-none ms-auto me-4">
                        <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
                    </div>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-lg-5 me-lg-auto">
                            <li class="nav-item"><a class="nav-link click-scroll" href="#section_1">Home</a> </li>
                            <li class="nav-item"><a class="nav-link click-scroll" href="#section_2">Browse Topics</a> </li>
                            <li class="nav-item"><a class="nav-link click-scroll" href="#section_3">How it works</a> </li>
                            <li class="nav-item"><a class="nav-link click-scroll" href="#section_4">FAQs</a> </li>
                            <li class="nav-item"><a class="nav-link click-scroll" href="#section_5">Contact</a> </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                    <li><a class="dropdown-item" href="topics-listing.html">Topics Listing</a></li>
                                    <li><a class="dropdown-item" href="contact.html">Contact Form</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="d-none d-lg-block">
                            <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
                        </div>
                    </div>
                </div>
            </nav>
            <section class="hero-section d-flex justify-content-center align-items-center" id="section_1">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-12 mx-auto">
                            <h1 class="text-white text-center">Discover. Learn. Enjoy</h1>
                            <h6 class="text-center">platform for creatives around the world</h6>
                            <form method="get" class="custom-form mt-4 pt-2 mb-lg-0 mb-5" role="search">
                                <div class="input-group input-group-lg">
                                    <span class="input-group-text bi-search" id="basic-addon1"></span>
                                    <input name="keyword" type="search" class="form-control" id="keyword" placeholder="Your journey to English fluency starts here..." aria-label="Search">
                                    <button type="submit" class="form-control">
                                        Search
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <section class="featured-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-12 mb-4 mb-lg-0">
                            <div class="custom-block bg-white shadow-lg">
                                <a href="topics-detail.html">
                                    <div class="d-flex">
                                        <div>
                                            <h5 class="mb-2">Resources</h5>
                                            <p class="mb-0">
                                                Anyone can practise with our free resources
                                            </p>
                                        </div>
                                        <span class="badge bg-design rounded-pill ms-auto">14</span>
                                    </div>
                                    <img src="images/topics/undraw_Remote_design_team_re_urdx.png" class="custom-block-image img-fluid" alt="">
                                </a>&nbsp;
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="custom-block custom-block-overlay">
                                <div class="d-flex flex-column h-100">
                                    <img src="images/businesswoman-using-tablet-analysis.jpg" class="custom-block-image img-fluid" alt="">
                                    <div class="custom-block-overlay-text d-flex">
                                        <div>
                                            <h5 class="text-white mb-2">LearnEnglish</h5>
                                            <p class="text-white">
                                                Learn English and improve your skills through our high-quality courses .
                                            </p>
                                            <a href="topics-detail.html" class="btn custom-btn mt-2 mt-lg-3">Learn More</a>
                                        </div>
                                        <span class="badge bg-finance rounded-pill ms-auto">25</span>
                                    </div>
                                    <div class="social-share d-flex">
                                        <p class="text-white me-4">
                                            Share:
                                        </p>
                                        <ul class="social-icon">
                                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-twitter"></a></li>
                                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-facebook"></a></li>
                                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-pinterest"></a></li>
                                        </ul>
                                        <a href="#" class="custom-icon bi-bookmark ms-auto"></a>
                                    </div>
                                    <div class="section-overlay">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="explore-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="mb-4">
                            Browse Topics</h1>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="design-tab" data-bs-toggle="tab" data-bs-target="#design-tab-pane" type="button" role="tab" aria-controls="design-tab-pane" aria-selected="true">
                                    Learn
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="marketing-tab" data-bs-toggle="tab" data-bs-target="#marketing-tab-pane" type="button" role="tab" aria-controls="marketing-tab-pane" aria-selected="false">
                                    Reading
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="finance-tab" data-bs-toggle="tab" data-bs-target="#finance-tab-pane" type="button" role="tab" aria-controls="finance-tab-pane" aria-selected="false">
                                    <a href="Buy Dictionary.aspx">Buy Dictionary</a>
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="music-tab" data-bs-toggle="tab" data-bs-target="#music-tab-pane" type="button" role="tab" aria-controls="music-tab-pane" aria-selected="false">
                                    Listening
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="education-tab" data-bs-toggle="tab" data-bs-target="#education-tab-pane" type="button" role="tab" aria-controls="education-tab-pane" aria-selected="false">
                                    Worksheets
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="design-tab-pane" role="tabpanel" aria-labelledby="design-tab" tabindex="0">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="d-flex">
                                                        <div>
                                                            <h5 class="mb-2">Grammer</h5>
                                                            <p class="mb-0">
                                                                Building your English fluency, with a strong foundation in grammar.
                                                            </p>
                                                        </div>
                                                        <span class="badge bg-design rounded-pill ms-auto">14</span>
                                                    </div>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMZPpyX_JVG2KDHbDcg1euwicZaYuNJt-k2w&s" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="d-flex">
                                                        <div>
                                                            <h5 class="mb-2">Vocabulary</h5>
                                                            <p class="mb-0">
                                                                Expanding your vocabulary is like unlocking new doors to the world
                                                            </p>
                                                        </div>
                                                        <span class="badge bg-design rounded-pill ms-auto">75</span>
                                                    </div>
                                                    <img src="images/book.jfif" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-12">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="d-flex">
                                                        <div>
                                                            <h5 class="mb-2">Reading</h5>
                                                            <p class="mb-0">
                                                                Reading opens doors. Open a book and open your mind to English
                                                            </p>
                                                        </div>
                                                        <span class="badge bg-design rounded-pill ms-auto">100</span>
                                                    </div>
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz4NT79zIZcW1xoLYavzLsz7tyNmv1PujzxA&s" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="marketing-tab-pane" role="tabpanel" aria-labelledby="marketing-tab" tabindex="0">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-3">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="d-flex">
                                                        <div>
                                                            <h5 class="mb-2">Advertising</h5>
                                                            <p class="mb-0">
                                                                Lorem Ipsum dolor sit amet consectetur
                                                            </p>
                                                        </div>
                                                        <span class="badge bg-advertising rounded-pill ms-auto">30</span>
                                                    </div>
                                                    <img src="images/topics/undraw_online_ad_re_ol62.png" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-3">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="d-flex">
                                                        <div>
                                                            <h5 class="mb-2">Video Content</h5>
                                                            <p class="mb-0">
                                                                Lorem Ipsum dolor sit amet consectetur
                                                            </p>
                                                        </div>
                                                        <span class="badge bg-advertising rounded-pill ms-auto">65</span>
                                                    </div>
                                                    <img src="images/topics/undraw_Group_video_re_btu7.png" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-12">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="d-flex">
                                                        <div>
                                                            <h5 class="mb-2">Viral Tweet</h5>
                                                            <p class="mb-0">
                                                                Lorem Ipsum dolor sit amet consectetur
                                                            </p>
                                                        </div>
                                                        <span class="badge bg-advertising rounded-pill ms-auto">50</span>
                                                    </div>
                                                    <img src="images/topics/undraw_viral_tweet_gndb.png" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%-- <div class="tab-pane fade" id="finance-tab-pane" role="tabpanel" aria-labelledby="finance-tab" tabindex="0">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-12 mb-4 mb-lg-0">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="d-flex">
                                                        <div>
                                                            <h5 class="mb-2">Investment</h5>
                                                            <p class="mb-0">
                                                                Lorem Ipsum dolor sit amet consectetur
                                                            </p>
                                                        </div>
                                                        <span class="badge bg-finance rounded-pill ms-auto">30</span>
                                                    </div>
                                                    <img src="images/topics/undraw_Finance_re_gnv2.png" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="custom-block custom-block-overlay">
                                                <div class="d-flex flex-column h-100">
                                                    <img src="images/businesswoman-using-tablet-analysis-graph-company-finance-strategy-statistics-success-concept-planning-future-office-room.jpg" class="custom-block-image img-fluid" alt="">
                                                    <div class="custom-block-overlay-text d-flex">
                                                        <div>
                                                            <h5 class="text-white mb-2">Finance</h5>
                                                            <p class="text-white">
                                                                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint animi necessitatibus aperiam repudiandae nam omnis
                                                            </p>
                                                            <a href="topics-detail.html" class="btn custom-btn mt-2 mt-lg-3">Learn More</a>
                                                        </div>
                                                        <span class="badge bg-finance rounded-pill ms-auto">25</span>
                                                    </div>
                                                    <div class="social-share d-flex">
                                                        <p class="text-white me-4">
                                                            Share:
                                                        </p>
                                                        <ul class="social-icon">
                                                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-twitter"></a></li>
                                                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-facebook"></a></li>
                                                            <li class="social-icon-item"><a href="#" class="social-icon-link bi-pinterest"></a></li>
                                                        </ul>
                                                        <a href="#" class="custom-icon bi-bookmark ms-auto"></a>
                                                    </div>
                                                    <div class="section-overlay">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>--%>
                                <div class="tab-pane fade" id="music-tab-pane" role="tabpanel" aria-labelledby="music-tab" tabindex="0">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-3">
                                            <div class="custom-block bg-white shadow-lg">
                                                <a href="topics-detail.html">
                                                    <div class="custom-block bg-white shadow-lg">
                                                        <div class="d-flex">
                                                            <div>
                                                                <h5 class="mb-2">Composing Song</h5>
                                                                <p class="mb-0">
                                                                    Lorem Ipsum dolor sit amet consectetur
                                                                </p>
                                                            </div>
                                                            <span class="badge bg-music rounded-pill ms-auto">45</span>
                                                        </div>
                                                        <img src="images/topics/undraw_Compose_music_re_wpiw.png" class="custom-block-image img-fluid" alt="">
                                                </a>&nbsp;
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-3">
                                        <div class="custom-block bg-white shadow-lg">
                                            <a href="topics-detail.html">
                                                <div class="d-flex">
                                                    <div>
                                                        <h5 class="mb-2">Online Music</h5>
                                                        <p class="mb-0">
                                                            Lorem Ipsum dolor sit amet consectetur
                                                        </p>
                                                    </div>
                                                    <span class="badge bg-music rounded-pill ms-auto">45</span>
                                                </div>
                                                <img src="images/topics/undraw_happy_music_g6wc.png" class="custom-block-image img-fluid" alt="">
                                            </a>&nbsp;
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-12">
                                        <div class="custom-block bg-white shadow-lg">
                                            <a href="topics-detail.html">
                                                <div class="d-flex">
                                                    <div>
                                                        <h5 class="mb-2">Podcast</h5>
                                                        <p class="mb-0">
                                                            Lorem Ipsum dolor sit amet consectetur
                                                        </p>
                                                    </div>
                                                    <span class="badge bg-music rounded-pill ms-auto">20</span>
                                                </div>
                                                <img src="images/topics/undraw_Podcast_audience_re_4i5q.png" class="custom-block-image img-fluid" alt="">
                                            </a>&nbsp;
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="education-tab-pane" role="tabpanel" aria-labelledby="education-tab" tabindex="0">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12 mb-4 mb-lg-3">
                                        <div class="custom-block bg-white shadow-lg">
                                            <a href="topics-detail.html">
                                                <div class="d-flex">
                                                    <div>
                                                        <h5 class="mb-2">Graduation</h5>
                                                        <p class="mb-0">
                                                            Lorem Ipsum dolor sit amet consectetur
                                                        </p>
                                                    </div>
                                                    <span class="badge bg-education rounded-pill ms-auto">80</span>
                                                </div>
                                                <img src="images/topics/undraw_Graduation_re_gthn.png" class="custom-block-image img-fluid" alt="">
                                            </a>&nbsp;
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="custom-block bg-white shadow-lg">
                                            <a href="topics-detail.html">
                                                <div class="d-flex">
                                                    <div>
                                                        <h5 class="mb-2">Educator</h5>
                                                        <p class="mb-0">
                                                            Lorem Ipsum dolor sit amet consectetur
                                                        </p>
                                                    </div>
                                                    <span class="badge bg-education rounded-pill ms-auto">75</span>
                                                </div>
                                                <img src="images/topics/undraw_Educator_re_ju47.png" class="custom-block-image img-fluid" alt="">
                                            </a>&nbsp;
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="timeline-section section-padding" id="section_3">
                <div class="section-overlay">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="text-white mb-4">
                            How does it work?</h1>
                        </div>
                        <div class="col-lg-10 col-12 mx-auto">
                            <div class="timeline-container">
                                <ul class="vertical-scrollable-timeline" id="vertical-scrollable-timeline">
                                    <div class="list-progress">
                                        <div class="inner">
                                        </div>
                                    </div>
                                    <li>
                                        <h4 class="text-white mb-3">Search your favourite topic</h4>
                                        <p class="text-white">
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis, cumque magnam? Sequi, cupiditate quibusdam alias illum sed esse ad dignissimos libero sunt, quisquam numquam aliquam? Voluptas, accusamus omnis?
                                        </p>
                                        <div class="icon-holder">
                                            <i class="bi-search"></i>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="text-white mb-3">Bookmark &amp; Keep it for yourself</h4>
                                        <p class="text-white">
                                            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sint animi necessitatibus aperiam repudiandae nam omnis est vel quo, nihil repellat quia velit error modi earum similique odit labore. Doloremque, repudiandae?
                                        </p>
                                        <div class="icon-holder">
                                            <i class="bi-bookmark"></i>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="text-white mb-3">Read &amp; Enjoy</h4>
                                        <p class="text-white">
                                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Animi vero quisquam, rem assumenda similique voluptas distinctio, iste est hic eveniet debitis ut ducimus beatae id? Quam culpa deleniti officiis autem?
                                        </p>
                                        <div class="icon-holder">
                                            <i class="bi-book"></i>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-12 text-center mt-5">
                            <p class="text-white">
                                Want to learn more? <a href="#" class="btn custom-btn custom-border-btn ms-3">Check out Youtube</a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="faq-section section-padding" id="section_4">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-12">
                            <h2 class="mb-4">Frequently Asked Questions</h2>
                        </div>
                        <div class="clearfix">
                        </div>
                        <div class="col-lg-5 col-12">
                            <img src="images/faq_graphic.jpg" class="img-fluid" alt="FAQs">
                        </div>
                        <div class="col-lg-6 col-12 m-auto">
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            What is Topic Listing?
                                        </button>
                                    </h2>
                                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            Topic Listing is free Bootstrap 5 CSS template. <strong>You are not allowed to redistribute this template</strong> on any other template collection website without our permission. Please contact TemplateMo for more detail. Thank you.
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingTwo">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            How to find a topic?
                                        </button>
                                    </h2>
                                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            You can search on Google with <strong>keywords</strong> such as templatemo portfolio, templatemo one-page layouts, photography, digital marketing, etc.
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingThree">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            Does it need to paid?
                                        </button>
                                    </h2>
                                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="contact-section section-padding section-bg" id="section_5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 text-center">
                            <h2 class="mb-5">Get in touch</h2>
                        </div>
                        <!DOCTYPE html>
                        <html>
                        <head>
                            <meta charset="UTF-8" />
                            <meta name="viewport" content="width=device-width, initial-scale=1" />
                            <title>British Council Footer</title>
                            <style>
                                body {
                                    margin: 0;
                                    font-family: Arial, sans-serif;
                                }

                                .footer {
                                    background-color: #808080; /* Grey background */
                                    color: white;
                                    padding: 20px 40px;
                                    font-size: 14px;
                                }

                                    .footer .top-row {
                                        display: flex;
                                        align-items: center;
                                        justify-content: space-between;
                                        flex-wrap: wrap;
                                    }

                                    .footer .logo {
                                        display: flex;
                                        align-items: center;
                                        font-weight: bold;
                                        font-size: 18px;
                                    }

                                        .footer .logo .icon {
                                            display: flex;
                                            gap: 5px;
                                            margin-right: 10px;
                                        }

                                            .footer .logo .icon div {
                                                width: 12px;
                                                height: 12px;
                                                background: white;
                                                border-radius: 50%;
                                            }

                                    .footer .links {
                                        display: flex;
                                        gap: 15px;
                                        flex-wrap: wrap;
                                    }

                                        .footer .links a {
                                            color: white;
                                            text-decoration: none;
                                            font-weight: 500;
                                        }

                                    .footer .social-icons {
                                        display: flex;
                                        gap: 15px;
                                        margin-left: auto;
                                    }

                                        .footer .social-icons a {
                                            color: white;
                                            text-decoration: none;
                                            font-size: 20px;
                                        }

                                    .footer .bottom-text {
                                        margin-top: 20px;
                                        font-size: 12px;
                                        line-height: 1.4;
                                    }
                            </style>
                            <!-- Use FontAwesome CDN for social icons -->
                            <link
                                rel="stylesheet"
                                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
                        </head>
                        <body>
                            <footer class="footer">
                                <div class="top-row">
                                    <div class="logo">
                                        <div class="icon">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <span style="margin-left: 10px;">| LearnEnglish</span>
                                    </div>
                                    <nav class="links">
                                        <a href="#">About us</a>
                                        <a href="#">Terms of use</a>
                                        <a href="#">Accessibility</a>
                                        <a href="#">Privacy and cookies</a>
                                        <a href="#">Affiliate programme</a>
                                        <a href="#">Getting started</a>
                                        <a href="#">Frequently asked questions</a>
                                        <a href="#">Contact us</a>
                                        <a href="#">Site map</a>
                                    </nav>
                                    <div class="social-icons">
                                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                                        <a href="#" aria-label="TikTok"><i class="fab fa-tiktok"></i></a>
                                    </div>
                                </div>
                                <div class="bottom-text">
                                    <strong>@LearnEnglish</strong><br />
                                    The United Kingdom's international organisation for cultural relations and educational opportunities.<br />
                                    A registered charity: 209131 (England and Wales) SC037733 (Scotland).
                                </div>
                            </footer>
                        </body>
                        </html>
            </section>
        </main>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <footer class="site-footer section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 mb-4 pb-2">
                    <a class="navbar-brand mb-2" href="index.html"><i class="bi-back"></i><span>Topic</span> </a>
                </div>
                <div class="col-lg-3 col-md-4 col-6">
                    <h6 class="site-footer-title mb-3">Resources</h6>
                    <ul class="site-footer-links">
                        <li class="site-footer-link-item"><a href="#" class="site-footer-link">Home</a> </li>
                        <li class="site-footer-link-item"><a href="#" class="site-footer-link">How it works</a> </li>
                        <li class="site-footer-link-item"><a href="#" class="site-footer-link">FAQs</a> </li>
                        <li class="site-footer-link-item"><a href="#" class="site-footer-link">Contact</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-4 col-6 mb-4 mb-lg-0">
                    <h6 class="site-footer-title mb-3">Information</h6>
                    <p class="text-white d-flex mb-1">
                        <a href="tel: 305-240-9671" class="site-footer-link">305-240-9671 </a>
                    </p>
                    <p class="text-white d-flex">
                        <a href="mailto:info@company.com" class="site-footer-link">info@company.com </a>
                    </p>
                </div>
                <div class="col-lg-3 col-md-4 col-12 mt-4 mt-lg-0 ms-auto">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            English
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                                <button class="dropdown-item" type="button">
                                    Thai
                                </button>
                            </li>
                            <li>
                                <button class="dropdown-item" type="button">
                                    Myanmar
                                </button>
                            </li>
                            <li>
                                <button class="dropdown-item" type="button">
                                    Arabic
                                </button>
                            </li>
                        </ul>
                    </div>
                    <p class="copyright-text mt-lg-5 mt-4">
                        Copyright © 2048 Topic Listing Center. All rights reserved.
                        <br>
                        <br>
                        Design: <a rel="nofollow" href="https://templatemo.com" target="_blank">TemplateMo</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>


    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/click-scroll.js"></script>
    <script src="js/custom.js"></script>

    </body>
</html>

</asp:Content>

