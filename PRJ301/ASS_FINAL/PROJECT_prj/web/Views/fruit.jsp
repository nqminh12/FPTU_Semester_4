<%-- 
    Document   : fruit
    Created on : Oct 18, 2023, 11:04:20 AM
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

        <!-- search -->
        <br>
        <div class="header-search">
            <div class="topnav">
                <form action="" method="get">
                    <input type="text" placeholder="search for...." name="key"/>
                    <button onclick="this.form.submit()">
                        <img src="images/search_icon.png" width="15px" 
                             height="15px" alt="search"/>
                    </button>    
                </form>
            </div> 
        </div>


        <!-- fruit section -->

        <section class="fruit_section layout_padding">
            <div class="container">
                <div class="heading_container">
                    <hr>
                    <h2>
                        Fresh Fruit
                    </h2>
                </div>
            </div>
            <div class="container-fluid">

                <div class="fruit_container">
                    <div class="box">
                        <img src="images/f-1.jpg" alt="">
                        <div class="link_box">
                            <h5>
                                Orange
                            </h5>
                            <a href="">
                                Buy Now
                            </a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="images/f-2.jpg" alt="">
                        <div class="link_box">
                            <h5>
                                Blueberry
                            </h5>
                            <a href="">
                                Buy Now
                            </a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="images/f-3.jpg" alt="">
                        <div class="link_box">
                            <h5>
                                Banana
                            </h5>
                            <a href="">
                                Buy Now
                            </a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="images/f-4.jpg" alt="">
                        <div class="link_box">
                            <h5>
                                Apple
                            </h5>
                            <a href="">
                                Buy Now
                            </a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="images/f-5.jpg" alt="">
                        <div class="link_box">
                            <h5>
                                Mango
                            </h5>
                            <a href="">
                                Buy Now
                            </a>
                        </div>
                    </div>
                    <div class="box">
                        <img src="images/f-6.jpg" alt="">
                        <div class="link_box">
                            <h5>
                                Strawberry
                            </h5>
                            <a href="">
                                Buy Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end fruit section -->


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