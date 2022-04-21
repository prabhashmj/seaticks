if(document.getElementById("Form_BookingForm_action_doSubmit"))
    document.getElementById("Form_BookingForm_action_doSubmit").style.display = "none";
if(document.getElementById("ViewButton"))
    document.getElementById("ViewButton").style.display = "none";
let total=0;
let urlOpen;
let n;
$(function() {
    let templateHolder = $('#booking-page-id');
    let link = $('#booking-page-id').attr('data-link');
    // alert(link);
    let sphereID = $('#booking-page-id').attr('data-sphere');
    if(templateHolder && templateHolder.length > 0){
        let svgImage = templateHolder.find('svg');
        svgImage.attr('height', '100%');
        if(svgImage && svgImage.length > 0){
            let allSeats = svgImage.find("g[type='rect']");
            let cart = [];

            allSeats.each(function() {
                if ($(this).attr('price') != undefined && $(this).attr('availability')!='unavailable') {
                    let self = $(this);
                    let arrayElement = {
                        Price: $(this).attr('price'),
                        Availability: $(this).attr('availability'),
                        ID: $(this).attr('id'),
                    };
                    let rect = $(this).find("rect");

                    rect.click(function () {
                        if (rect.hasClass("clicked")) {
                            rect.css('fill', "rgb(233,150,122)");
                            self.attr('availability', "available");
                            rect.removeClass("clicked");

                            cart = cart.filter(function (obj) {
                                return obj.ID != self.attr('id');
                            });

                            if (cart.length == 0) {
                                document.getElementById("Form_BookingForm_action_doSubmit").style.display = "none";

                                document.getElementById("ViewButton").style.display = "none";

                                let pathArray = window.location.pathname.split('/');
                                let eventId= pathArray[4];
                                // let url = link.replace("/Seaticks/", "");
                                let updatedSVG = $('#booking-page-id');
                                document.getElementById('Form_BookingForm_Price').value=total;
                                console.log(updatedSVG.html());
                                console.log(eventId);
                                document.getElementById('Form_BookingForm_SVG').value=updatedSVG.html();
                                document.getElementById('Form_BookingForm_EventID').value=eventId;
                            }
                            totalCost(cart);

                            bookButton(cart);

                        } else {
                            rect.css('fill', "rgb(0,150,0)");
                            self.attr('availability', "unavailable");
                            rect.addClass("clicked");
                            rect.attr("id", $(this).attr('id'));
                            cart.push(arrayElement);

                            totalCost(cart);
                            urlOpen = link + '/' + sphereID + '?Code=' + self.attr('positionid');
                            n= self.attr('positionid');

                            if (cart.length > 0) {
                                document.getElementById("Form_BookingForm_action_doSubmit").style.display = "block";
                                document.getElementById("ViewButton").style.display = "block";
                                let pathArray = window.location.pathname.split('/');
                                let eventId= pathArray[4];
                                // let url = link.replace("/Seaticks/", "");
                                let updatedSVG = $('#booking-page-id');
                                document.getElementById('Form_BookingForm_Price').value=total;
                                console.log(updatedSVG.html());
                                console.log(eventId);
                                document.getElementById('Form_BookingForm_SVG').value=updatedSVG.html();
                                document.getElementById('Form_BookingForm_EventID').value=eventId;
                            }
                            bookButton(cart);
                        }
                    });
                    $(this).attr('title', "<b>Seat Details</b>");
                    $(this).popover({
                        trigger: 'hover',
                        toggle: 'popover',
                        html: true,
                        content: "<div><b>Price: " + $(this).attr('price') + "</b><br> <b> Availability: </b>" + $(this).attr('availability') + "</div>",
                    });


                    if (sphereID > 0) {

                        $.contextMenu({
                            selector: 'g#' + self.attr('id'),
                            callback: function (itemKey, opt) {
                                return false;
                            },
                            items: {
                                copy: {
                                    name: "Point of View",
                                    callback: function (key, opt) {
                                        let win = window.open(link + '/' + sphereID + '?Code=' + self.attr('positionid'), '_blank');
                                        if (win) {
                                            //Browser has allowed it to be opened
                                            win.focus();
                                        } else {
                                            //Browser has blocked it
                                            alert('Please allow popups for this website');
                                        }
                                    }
                                }
                            }
                        });
                    }
                }
            }
        );

        }
    }


    function totalCost(cart){
        total=0;
        cart.forEach(function (obj) {

            let price=obj.Price;
            let floatPrice=parseFloat(price);
            total+=floatPrice;

        });
        document.getElementById('myCost').innerText =  total;

    }
});

function bookButton(cart){
    document.getElementById('Form_BookingForm_action_doSubmit').value =  'Book '+cart.length+ ' Ticket(s)';
    document.getElementById('ViewButton').value =  'Point of View of Seat '+n;
}

let ViewButton = $('#ViewButton');
if(ViewButton && ViewButton.length>0){
    ViewButton.click(function() {

        window.open( urlOpen);

    });
}


