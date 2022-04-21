
<div style="font-family: sans-serif;  margin-top: 20px;" class="content">$Content</div>




<% require themedCSS('animate') %>
<% require themedCSS('magnific-popup') %>
<% require themedCSS('slick') %>
<% require themedCSS('LineIcons') %>
<% require themedCSS('font-awesome.min') %>
<% require themedCSS('default') %>
<% require themedCSS('style') %>

<section id="team" class="team-area pt-120">
    <div class="container">
        <% if $Headline %>
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <%--<% if $Members %>--%>
                <div class="section-title text-center pb-30">
                    <div class="line m-auto"></div>
                    <h3 class="title">$Headline </h3>
                </div> <!-- section title -->
                <%--<% end_if %>--%>
            </div>
        </div> <!-- row -->
        <% end_if %>

        <% if $Members %>
        <div class="row justify-content-center">
            <% loop $Members %>

        <div class="col-lg-4 col-md-7 col-sm-8">
        <div class="single-team text-center mt-30 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
        <div class="team-image">
            <img style="max-height: 250px; overflow: hidden; object-fit: cover;" src="$ProfilePhoto.URL" alt="Team">
        <div class="social">
        <ul>
                <% if $FbLink %>
                    <li><a href="$FbLink"><i class="lni-facebook-filled"></i></a></li>
                <% end_if %>
                <% if $TwitterLink %>
                    <li><a href="$TwitterLink"><i class="lni-twitter-filled"></i></a></li>
                <% end_if %>
                <% if $InstaLink %>
                    <li><a href="$InstaLink"><i class="lni-instagram-filled"></i></a></li>
                <% end_if %>
                <% if $LinkedIn %>
                    <li><a href="$LinkedIn"><i class="lni-linkedin-original"></i></a></li>
                <% end_if %>

            </ul>
            </div>
            </div>
                <div class="team-content">
                    <h5 class="holder-name"><a href="#">$Name</a></h5>
                    <p class="text">$JobTitle</p>
                </div>
            </div> <!-- single team -->
            </div>
            <% end_loop %>
        </div> <!-- row -->
        <% end_if %>


    </div> <!-- container -->
</section>


<section id="testimonial" class="testimonial-area pt-120">
    <div class="container">

        <% if $HeadlineTitle %>
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="section-title text-center pb-40">
                    <div class="line m-auto"></div>
                    <h3 class="title">$HeadlineTitle</h3>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <% end_if %>

        <div class="row testimonial-active wow fadeInUpBig" data-wow-duration="1s" data-wow-delay="0.8s">

            <% if $Experiences %>
                <% loop $Experiences %>
            <div class="col-lg-4">
                <div class="single-testimonial">
                    <div class="testimonial-review d-flex align-items-center justify-content-between">
                        <div class="quota">
                            <i class="lni-quotation"></i>
                        </div>
                        <div class="star">
                            <ul>
                                <li><i class="lni-star-filled"></i></li>
                                <li><i class="lni-star-filled"></i></li>
                                <li><i class="lni-star-filled"></i></li>
                                <li><i class="lni-star-filled"></i></li>
                                <li><i class="lni-star-filled"></i></li>
                            </ul>
                        </div>
                    </div>
                    <div class="testimonial-text">
                        <p class="text">$Comment</p>
                    </div>
                    <div class="testimonial-author d-flex align-items-center">
                        <div class="author-image">
                            <img class="shape" src="public/_resources/themes/seaticks/images/textimonial-shape.svg" alt="shape">
                            <img class="author" src="$CustomerPhoto.URL" alt="author">
                        </div>
                        <div class="author-content media-body">
                            <h6 class="holder-name">$CustomerName</h6>
                            <p class="text">$Position</p>
                        </div>
                    </div>
                </div> <!-- single testimonial -->
            </div>
                <% end_loop %>
            <% end_if %>

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






