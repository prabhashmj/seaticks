<div class="container-fluid" style="background-color: rgba(255,255,255,0.7)">


<div class="row " >
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

    <img class="cropBookingPageImage" src="$Event.CoverPhoto.URL" alt="Hero image" >
    </div>
</div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 col-xl-7">

            <h2 style="color: #001364;"> $Event.Title</h2>
            <button style="width: 100%;" type="button" id="bookThisSeat" class="btn btn-success center"  >Book Now</button>

            <div style="color: black">$Event.Description</div>
        </div>
        <div style="margin-top: 50px; margin-bottom: 30px; " class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 jumbotron">
            <div style="margin-bottom: 25px;" class="fb-share-button" data-href="http://seaticks.pramesh/" data-layout="button_count" data-size="large"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fseaticks.pramesh%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Share</a></div>

            <h4 style="color: #0b2e13">Start Time : $Event.StartTime</h4>
           <h4 style="color: #0b2e13">End Time : $Event.EndTime</h4>
           <h5 class="center" style="color: #0b2e13; margin-top: 50px;">Email : $Event.Email</h5>
           <h5 class="center" style="color: #0b2e13; ">Contact : 071123456</h5>
           <h5 class="center" style="color: #0b2e13; ">Location : SavoySL cinema, wellawatta, Colombo</h5>

        </div>
    </div>


</div>

<div class="container-fluid">
    <div class="row" >
        <div class="col-md-12" >
            <div id="myModal" class="modal">
                <!-- Modal content -->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 style="color: darkgreen" class="left">Select Your Favourite Seats</h4>
                        <span style="color: #1d7d74" id="closeThis" class="close">&times;</span>
                    </div>
                    <div class="modal-body">
                        <%--<div  class="box">--%>
                            <div class="row">
                                <div class="col-md-8" >
                                    <h1 style="color: white; font-weight: bolder; margin-top: 20px; ">$Title</h1>
                                    <div style="border: 1px solid black;background-color:white; margin-bottom: 20px;" class="booking" id="booking-page-id" data-id="$ID" data-link="$VirtualPageLink" data-sphere="$VirtualImageID">
                                        $SVG.RAW
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <form id="Form_BookingForm" action="{$getPayLink}booking/doSubmit/" method="post" enctype="application/x-www-form-urlencoded">
                                        <p id="Form_BookingForm_error" class="message " style="display: none"></p>
                                        <fieldset>
                                            <input type="hidden" name="Price" value="0" class="hidden" id="Form_BookingForm_Price" required="required" aria-required="true">
                                            <input type="hidden" name="EventID" value="0" class="hidden" id="Form_BookingForm_EventID" required="required" aria-required="true">
                                            <input type="hidden" name="SVG" value="" class="hidden" id="Form_BookingForm_SVG" required="required" aria-required="true">
                                            <input type="hidden" name="SecurityID" value="ab3456289858865f818d085f28072793380b2b39" class="hidden" id="Form_BookingForm_SecurityID">
                                            <div class="clear"><!-- --></div>
                                        </fieldset>
                                        <div class="btn-toolbar">
                                            <h2 style="color: black;">Total Price: Rs. <span id="myCost" ></span></h2>

                                            <input type="submit" name="action_doSubmit" value="Book" data-payLink="$Link" class="action" id="Form_BookingForm_action_doSubmit">
                                            <input style="margin-top: 10px;" type="button" id="ViewButton" value="Point of View" class="btn btn-outline-info " >

                                        </div>
                                    </form>

                                </div>

                            </div>
                            <br><br>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


