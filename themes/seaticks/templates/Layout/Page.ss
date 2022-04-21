<% include SideBar %>
$Content
<% if $Slides %>
    <div class="container-fluid" style="width: 106%; margin-left: -3%;">

        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <% loop $Slides %>
                    <li data-target="#myCarousel" data-slide-to="$ID" <% if $First %>class="active"<% end_if %>></li>
                <% end_loop %>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <% loop $Slides %>
                    <div class="carousel-item <% if $First %>active<% end_if %>">
                        <img src="$getURL" alt="$Title">
                    </div>
                <% end_loop %>
            </div>



            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>

    </div>
<% end_if %>

<% if $URLSegment == 'home' %>
<% if $getAllEvents %>
    <a  href="http://seaticks.pramesh/" style="color: #0f9d58">All      </a>
<% loop $AllCategories %>

    <a  href="{$getCategoryLink}?category={$Title}">#$Title  </a>
<% end_loop %>
<div class="row">
<% end_if %>
<% end_if %>


    <% if $SubsiteID == 0 %>
            <% if $URLSegment == 'home' %>
                <% loop $getAllEventsWithSubsites %>
                <div  class=" col-xs-6 col-sm-6 col-md-4 col-lg-4 col-xl-4 ">

                        <div   style="margin-top: 35px;"  >
                            <div class="card " style=" background: rgba(0,0,0,0.15); min-height: 560px; max-height: 561px;" >
                                <h1 style="font-weight: lighter; color: black; font-family: 'Microsoft YaHei',sans-serif;  text-align: center;  ">$Title</h1>

                                <img class="card-img-top cropHomepageImage" src="$CoverPhoto.URL" alt="Card image">

                                <span class="card-title"><h3 style="margin-left: 20px; margin-top: 20px; color: #15957d;">Facility: $SeatingPlan.Title</h3></span>
                                <%--</div>--%>
                                <div class="card-content scroll" style="max-height: 200px; ">
                                    <div style="color: #0b5b0d; font-weight: bolder; margin-left: 20px;" class="btn-group">
                                        <% loop $EventCategories %>
                                            <div style=" margin-right: 10px; color: #0b2e13;"><a style="font-size: 120%;" href="{$getCategoryLink}?category={$Title}">#$Title</a></div>
                                        <% end_loop %>
                                    </div>
                                    <div style="color: black; margin-left: 20px;" >
                                        Start Time: $StartTime &nbsp &nbsp&nbsp&nbsp&nbsp- &nbsp&nbsp&nbsp&nbsp&nbspEnd Time: $EndTime
                                    </div>
                                    <div style="color: black; margin-left: 10px; margin-top: 20px; margin-right: 10px;" class="lead">
                                        $Description
                                    </div>
                                </div>
                            </div>
                            <div class="jambotron" style=" background: rgba(240, 240, 240, 0.6); ">
                                <a style="font-size: 1.4vw" id="book-seat" href="{$Top.BookingLink}/{$SeatingPlan.ID}/{$ID}"><button style="width: 100%;" class="btn btn-success btn-md">Book a Seat</button></a>
                            </div>
                        </div>
                </div>

                <% end_loop %>
            <% end_if %>
    <% else %>
            <% if $URLSegment == 'home' %>
                <% loop $getAllEvents %>
                        <div  class=" col-xs-6 col-sm-6 col-md-4 col-lg-4 col-xl-4 ">

                            <div   style="margin-top: 35px;"  >
                                <div class="card " style=" background: rgba(0,0,0,0.15); min-height: 560px; max-height: 561px;" >
                                    <h1 style="font-weight: lighter; color: black; font-family: 'Microsoft YaHei',sans-serif;  text-align: center;  ">$Title</h1>
                                    <img class="card-img-top cropHomepageImage" src="$CoverPhoto.URL" alt="Card image">

                                    <span class="card-title"><h3 style="margin-left: 20px; margin-top: 20px; color: #15957d;">Facility: $SeatingPlan.Title</h3></span>
                                    <%--</div>--%>
                                    <div class="card-content scroll" style="max-height: 200px; ">
                                        <div style="color: #0b5b0d; font-weight: bolder; margin-left: 20px;" class="btn-group">
                                            <% loop $EventCategories %>
                                                <div style=" margin-right: 10px; color: #0b2e13;"><a style="font-size: 120%;" href="{$getCategoryLink}?category={$Title}">#$Title</a></div>
                                            <% end_loop %>
                                        </div>
                                        <div style="color: black; margin-left: 20px;" >
                                            Start Time: $StartTime &nbsp &nbsp&nbsp&nbsp&nbsp- &nbsp&nbsp&nbsp&nbsp&nbspEnd Time: $EndTime
                                        </div>
                                        <div style="color: black; margin-left: 10px; margin-top: 20px; margin-right: 10px;" class="lead">
                                            $Description
                                        </div>


                                    </div>

                                </div>
                                <div class="jambotron" style=" background: rgba(240, 240, 240, 0.6); ">
                                    <a style="font-size: 1.4vw" id="book-seat" href="{$Top.BookingLink}/{$SeatingPlan.ID}/{$ID}"><button style="width: 100%;" class="btn btn-success btn-md">Book a Seat</button></a>
                                </div>
                            </div>
                        </div>

                <% end_loop %>
            <% end_if %>
    <% end_if %>






</div>







$Form


