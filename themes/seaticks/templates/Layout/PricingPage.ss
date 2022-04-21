<% require themedCSS('materialize.min') %>
<script src="$resourceURL('themes/seaticks/javascript/materialize.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/jquery.contextMenu.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/jquery.ui.position.min.js')"></script>


<% require themedCSS('animate') %>
<% require themedCSS('magnific-popup') %>
<% require themedCSS('slick') %>
<% require themedCSS('LineIcons') %>
<% require themedCSS('font-awesome.min') %>
<% require themedCSS('default') %>
<% require themedCSS('style') %>


<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" href="public/_resources/themes/seaticks/images/logo seatickscom.png" type="image/png">




<div class="preloader">
    <div class="loader">
        <div class="ytp-spinner">
            <div class="ytp-spinner-container">
                <div class="ytp-spinner-rotator">
                    <div class="ytp-spinner-left">
                        <div class="ytp-spinner-circle"></div>
                    </div>
                    <div class="ytp-spinner-right">
                        <div class="ytp-spinner-circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<header class="header-area">
    <div class="navbar-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div> <!-- navbar area -->

    <div id="home" class="header-hero bg_cover" style="background-image: url(public/_resources/themes/seaticks/images/banner-bg.svg)">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="header-hero-content text-center">
                        <h3 class="header-sub-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.2s">Seaticks.com </h3>
                        <h2 class="header-title wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.5s">Your Online Ticket selling platform</h2>
                        <p class="text wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="0.8s">Sign up and create your seating plan to start selling tickets with seat booking facilities</p>
                        <a href="#planns" class="main-btn wow fadeInUp" data-wow-duration="1.3s" data-wow-delay="1.1s">Get Started</a>
                    </div> <!-- header hero content -->
                </div>
            </div> <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="header-hero-image text-center wow fadeIn" data-wow-duration="1.3s" data-wow-delay="1.4s">
                        <img src="public/_resources/themes/seaticks/images/headerhero.png" alt="hero">
                    </div> <!-- header hero image -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
        <div id="particles-1" class="particles"></div>
    </div> <!-- header hero -->
</header>


<div class="brand-area pt-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="brand-logo d-flex align-items-center justify-content-center justify-content-md-between">
                    <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                        <a href="https://www.facebook.com/"  target="_blank"> <img style="width: 50px; height: 50px;" src="public/_resources/themes/seaticks/images/brand1.png" alt="facebook"></a>
                    </div> <!-- single logo -->
                    <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.2s">
                        <a href="https://www.instagram.com/"  target="_blank">  <img  style="width: 50px; height: 50px;" src="public/_resources/themes/seaticks/images/brand2.png" alt="instagram"></a>
                    </div> <!-- single logo -->
                    <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.3s">
                        <a href="https://www.twitter.com/"  target="_blank">  <img style="width: 50px; height: 50px;"  src="public/_resources/themes/seaticks/images/brand3.png" alt="twitter"></a>
                    </div> <!-- single logo -->
                    <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.4s">
                        <a href="https://www.youtube.com/"  target="_blank">  <img style="width: 50px; height: 50px;"  src="public/_resources/themes/seaticks/images/brand4.png" alt="youtube"></a>
                    </div> <!-- single logo -->
                    <div class="single-logo mt-30 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="0.5s">
                        <a href="https://www.linkedin.com/"  target="_blank">  <img  style="width: 50px; height: 50px;" src="public/_resources/themes/seaticks/images/brand5.png" alt="linkedin"></a>
                    </div> <!-- single logo -->
                </div> <!-- brand logo -->
            </div>
        </div>   <!-- row -->
    </div> <!-- container -->
</div>


<section id="features" class="services-area pt-30">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center ">
                    <div  id="planns" class="line m-auto"></div>
                    <h3 style="color: #ff8284;" class="title">Start your business with us , <span> Subscribe to the platform and be an amazing service provider with Seaticks!</span></h3>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->

        <div class="row justify-content-center">


            <% if $PricingPlans %>
                <% loop $PricingPlans %>
                    <%--sdkfhgbasf--%>
                    <div id="plans" class="col-lg-3 col-md-6 col-sm-8">

                        <div class="single-services text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                            <div class="services-icon">
                                <img style="width: 180px; height: 180px;" class="shape" src="public/_resources/themes/seaticks/images/services-shape.svg" alt="shape">
                                <img style="width: 120px; height: 120px;" class="shape-1" src="$SubscriptionPlanPhoto.URL" alt="shape">
                                <i class="lni-baloon"></i>
                            </div>
                            <div class="services-content mt-30">
                                <h4 class="services-title"><a href="#">$Title</a></h4>
                                <h4  class="services-title"><a style="color: green;" href="#">$$Price.00</a></h4>
                                <h5 class="text">This Subscription plan will allow you to create $NoOfSeatingPlans Seating Plans with a small cost of $Price USD </h5>
                                <a  class="main-btn wow fadeInUp mt-30 " data-wow-duration="1.3s" data-wow-delay="1.1s" href="{$Top.Link}signup/{$ID}">Subscribe <i class="lni-chevron-right"></i></a>
                            </div>
                        </div>

                        <!-- single services -->
                    </div>
                <% end_loop %>
            <% end_if %>



        </div> <!-- row -->
    </div> <!-- container -->
</section>



<section id="about" class="about-area pt-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-content mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                    <div class="section-title">
                        <div class="line"></div>
                        <h3 class="title">Quick & Easy <span>to Use Seat Plan Creating Tool</span></h3>
                    </div> <!-- section title -->
                    <h5 class="text">We give you a build in simple tools to create the seating plan of your facility in order to provide amazing experience to your customers! You can add a 360 image to showcase the amazing facility that you have and also customers are able to see the location of their seats before buying the ticket. </h5>
                    <a href="#planns" class="main-btn">Sign Up</a>
                </div> <!-- about content -->
            </div>
            <div class="col-lg-6">
                <div class="about-image text-center mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                    <img src="public/_resources/themes/seaticks/images/about1.svg" alt="about">
                </div> <!-- about image -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
    <div class="about-shape-1">
        <img src="public/_resources/themes/seaticks/images/about-shape-1.svg" alt="shape">
    </div>
</section>



<section class="about-area pt-70">
    <div class="about-shape-2">
        <img src="public/_resources/themes/seaticks/images/about-shape-2.svg" alt="shape">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 order-lg-last">
                <div class="about-content mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                    <div class="section-title">
                        <div class="line"></div>
                        <h3 class="title">Modern design <span> with Essential Features</span></h3>
                    </div> <!-- section title -->
                    <h5 class="text">We have designed the vendor account with Content Management System feature, where you can edit your account without any expert knowledge. All the essential features like social media promoting and payment handling can be done through the Site itself. </h5>
                    <a href="#planns" class="main-btn">Sign Up</a>
                </div> <!-- about content -->
            </div>
            <div class="col-lg-6 order-lg-first">
                <div class="about-image text-center mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                    <img src="public/_resources/themes/seaticks/images/about2.svg" alt="about">
                </div> <!-- about image -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>


<section class="about-area pt-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-content mt-50 wow fadeInLeftBig" data-wow-duration="1s" data-wow-delay="0.5s">
                    <div class="section-title">
                        <div class="line"></div>
                        <h3 class="title"><span>Published for</span> all the seat booking service providers & Customers all over the world</h3>
                    </div> <!-- section title -->
                    <h5 class="text">We have published this platform for all the customers around the world and Vendors who wants to provide seat booking functionalities for their customers. Vendors can subscribe to our platform and start selling their tickets for customers by few following few steps.</h5>
                    <a href="#planns" class="main-btn">Sign Up</a>
                </div> <!-- about content -->
            </div>
            <div class="col-lg-6">
                <div class="about-image text-center mt-50 wow fadeInRightBig" data-wow-duration="1s" data-wow-delay="0.5s">
                    <img src="public/_resources/themes/seaticks/images/about3.svg" alt="about">
                </div> <!-- about image -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
    <div class="about-shape-1">
        <img src="public/_resources/themes/seaticks/images/about-shape-1.svg" alt="shape">
    </div>
</section>



<section id="facts" class="video-counter pt-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="video-content mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                    <img class="dots" src="public/_resources/themes/seaticks/images/dots.svg" alt="dots">
                    <div class="video-wrapper">
                        <div class="video-image">
                            <img src="public/_resources/themes/seaticks/images/video.png" alt="video">
                        </div>
                        <div class="video-icon">
                            <a href="https://www.youtube.com/watch?v=6vcBKwnl_Y0" class="video-popup"><i class="lni-play"></i></a>
                        </div>
                    </div> <!-- video wrapper -->
                </div> <!-- video content -->
            </div>
            <div class="col-lg-6">
                <div class="counter-wrapper mt-50 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
                    <div class="counter-content">
                        <div class="section-title">
                            <div class="line"></div>
                            <h3 class="title">Cool facts <span> about this Platform</span></h3>
                        </div> <!-- section title -->
                    </div>
                    <div class="row no-gutters">
                        <div class="col-4">
                            <div class="single-counter counter-color-1 d-flex align-items-center justify-content-center">
                                <div class="counter-items text-center">
                                    <span class="count"><span class="counter">122</span>K</span>
                                    <p class="text">Downloads</p>
                                </div>
                            </div> <!-- single counter -->
                        </div>
                        <div class="col-4">
                            <div class="single-counter counter-color-2 d-flex align-items-center justify-content-center">
                                <div class="counter-items text-center">
                                    <span class="count"><span class="counter">84</span>K</span>
                                    <p class="text">Active Users</p>
                                </div>
                            </div> <!-- single counter -->
                        </div>
                        <div class="col-4">
                            <div class="single-counter counter-color-3 d-flex align-items-center justify-content-center">
                                <div class="counter-items text-center">
                                    <span class="count"><span class="counter">4.6</span></span>
                                    <p class="text">User Rating</p>
                                </div>
                            </div> <!-- single counter -->
                        </div>
                    </div> <!-- row -->
                </div> <!-- counter wrapper -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>


<a href="#" class="back-to-top"><i class="lni-chevron-up"></i></a>



<script src="$resourceURL('themes/seaticks/javascript/subJS/jquery-1.12.4.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/modernizr-3.7.1.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/popper.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/plugins.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/slick.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/ajax-contact.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/waypoints.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/jquery.counterup.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/jquery.magnific-popup.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/jquery.easing.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/scrolling-nav.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/subJS/particles.min.js')"></script>

