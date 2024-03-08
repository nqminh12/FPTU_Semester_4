<%-- 
    Document   : contact
    Created on : Oct 18, 2023, 11:04:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>FruitShop</title>

        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Dosis:400,600,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>

    <body class="sub_page">
        <!-- nav section -->

        <section class="nav_section">
            <div class="container">
                <div class="custom_nav2">
                    <nav class="navbar navbar-expand custom_nav-container ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <div class="d-flex  flex-column flex-lg-row align-items-center">
                                <ul class="navbar-nav  ">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="about">About </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="fruit">Our Fruit </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact">Contact Us</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="Views/login.jsp">Login</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </section>

        <!-- end nav section -->


        <!-- contact section -->
        <section class="contact_section layout_padding">
            <div class="container-fluid">
                <div class="row">
                    <div class="offset-lg-2 col-md-10 offset-md-1">
                        <div class="heading_container">
                            <hr>
                            <h2>
                                Request A call back
                            </h2>
                        </div>
                    </div>
                </div>

                <div class="layout_padding2-top">
                    <div class="row">
                        <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
                            <form action="">
                                <div class="contact_form-container">
                                    <div>
                                        <div>
                                            <input type="text" placeholder="Full Name" />
                                        </div>
                                        <div>
                                            <input type="email" placeholder="Email" />
                                        </div>
                                        <div>
                                            <input type="text" placeholder="Phone Number" />
                                        </div>
                                        <div>
                                            <input type="text" class="message_input" placeholder="Message" />
                                        </div>
                                        <div>
                                            <button type="submit">
                                                Send
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6 px-0">
                            <div class="map_container">
                                <div class="map-responsive">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.491272819393!2d105.52392847535481!3d21.013020180632413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc60e7d3f19%3A0x2be9d7d0b5abcbf4!2zQsOyIFTDqm4gTOG7rWEgUXXDoW4!5e0!3m2!1sen!2sus!4v1697603662532!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end contact section -->


        <!-- info section -->

        <section class="info_section layout_padding">
            <div class="container">
                <div class="info_logo">
                    <h2>
                        Fruit Shop
                    </h2>
                </div>
                <div class="info_contact">
                    <div class="row">
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/location.png" alt="">
                                <span>
                                    Trường Đại Học FPT- Khu CNC Hoà Lạc
                                    - Km29 Đại lộ Thăng Long, Xã Thạch Hòa, 
                                    Huyện Thạch Thất, Hà Nội
                                </span>
                            </a>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/call.png" alt="">
                                <span>
                                    Call : 0387479017
                                </span>
                            </a>
                        </div>
                        <div class="col-md-4">
                            <a href="">
                                <img src="images/mail.png" alt="">
                                <span>
                                    demo@gmail.com
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 col-lg-9">
                        <div class="info_form" style="text-align: center">
                            <p>Thank you for your visit. Have a good day!</p> 
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="info_social">
                            <div>
                                <a href="">
                                    <img src="images/facebook-logo-button.png" alt="">
                                </a>
                            </div>
                            <div>
                                <a href="">
                                    <img src="images/twitter-logo-button.png" alt="">
                                </a>
                            </div>
                            <div>
                                <a href="">
                                    <img src="images/linkedin.png" alt="">
                                </a>
                            </div>
                            <div>
                                <a href="">
                                    <img src="images/instagram.png" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>

        <!-- end info section -->


        <!-- footer section -->
        <section class="container-fluid footer_section">
            <p>
                &copy; <span id="displayYear"></span> All Rights Reserved By
                <a href="https://html.design/">Fruit Shop</a>
            </p>
        </section>
        <!-- footer section -->


        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>

    </body>

</html>
