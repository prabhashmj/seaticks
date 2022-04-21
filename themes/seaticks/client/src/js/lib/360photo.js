import {rootURL} from './Config';

/**
 * Initialize the viewer
 */
$( document ).ready(function() {
    let markersString = $('#photosphere').attr('data-markers');
    let DBMarkers = [];
    if(markersString){
        DBMarkers = JSON.parse(markersString);
        DBMarkers = DBMarkers ? DBMarkers : [];
    }

    function getMarker(markerId) {
        let result = DBMarkers.find(t=>t.positionid ===markerId);
        return result;
    }


    if($('#photosphere') && $('#photosphere').length > 0)
    {

        let PSV;

        console.log(rootURL);
        PSV = new PhotoSphereViewer({

            panorama: $('#photosphere').attr('data-image'),
            container: 'photosphere',
            loading_img: rootURL + 'public/_resources/themes/seaticks/images/icons/photosphere-logo.gif',
            time_anim: false,
            caption: 'Virtual Image',
            default_fov: 70,
            default_lat: 0.3,
            mousewheel: false,
            touchmove_two_fingers: true,

            size: {
                height: 500,
                width: '100%',
            },


            // list of DBMarkers
            markers: DBMarkers
        });



        let url_string = window.location.href; //window.location.href
        let url = new URL(url_string);
        let code = url.searchParams.get("Code");
        let navigated = false;
        // let marker = getMarker('#image22');
        PSV.on('ready', function(e, data) {
            setInterval(function(){
                if(navigated == false){
                    try{
                        PSV.gotoMarker('#'+code, 1500)
                            .then(() => console.log('rrr'));
                    }catch (e) {
                       console.log(e.message) ;
                        navigated = true;
                    }
console.log(code);
                }
                navigated = true;

            }, 1000);
        });




        // const markersPlugin = PSV.getPlugin(MarkersPlugin);
        if($('#photosphere').attr('data-editable') != 'true') {
            let url_string = window.location.href; //window.location.href
            let url = new URL(url_string);
            let code = url.searchParams.get("Code");
            let navigated = false;
            // let marker = getMarker('#image22');
            PSV.on('ready', function (e, data) {
                setInterval(function () {
                    if (navigated == false) {
                        markersPlugin.gotoMarker('#' + code, 1500)
                            .then(() => console.log('rrr'));
                    }
                    navigated = true;

                }, 1000);
            });
        }



        if($('#photosphere').attr('data-editable') == 'true'){


            PSV.on('click', function(e) {
                let code = prompt("Please enter seat ID : ", "");
                if (code == null || code == "") {
                    return false;
                } else {
                    try {
                        let marker = {
                            id: '#' + code,
                            longitude: e.longitude,
                            latitude: e.latitude,
                            image: rootURL +'public/_resources/themes/seaticks/images/icons/pin1.png',
                            width: 32,
                            height: 32,
                            anchor: 'bottom center',
                            tooltip: 'seat '+code,
                            data: {
                                generated: true
                            }
                        };
                        PSV.addMarker(marker);
                        DBMarkers.push(marker);
                        updateMarkers();
                    } catch (e) {
                        alert(e.message);

                    }
                }
            });

            /**
             * Delete a generated marker when the user clicks on it
             */
            PSV.on('select-marker', function(marker) {

                if (marker.data && marker.data.generated) {
                        PSV.removeMarker(marker);
                        let filteredArr = DBMarkers.filter(function (element) {
                            return element.id !== marker.id;
                        });
                        DBMarkers = filteredArr;
                        updateMarkers();
                    }
            });



        }

    }

    function updateMarkers(){
        const link = $('#photosphere').attr('data-link');
        const planID = $('#photosphere').attr('data-id');
        const url = link + 'savemarkers';
        $.ajax({
            url: url,
            type: 'POST',
            cache: false,
            dataType: 'JSON',
            data: {Markers: JSON.stringify(DBMarkers), ID: planID},
            success: function (response) {
                // let result = JSON.parse(response);
                console.log(response);
            },
            complete: function () {

            },
            error: function () {
                alert('error alert');
            },
        });
    }


    if($('#svgImage') && $('#svgImage').length > 0){
        let svg = $('#svgImage').find('svg');
        svg.attr('width', '100%');
        svg.attr('height', '100%');
    }

});


$(function() {
    let seatDetails = $('#svgImage');
    if(seatDetails && seatDetails.length > 0){
        let svgImage = seatDetails.find('svg');
        if(svgImage && svgImage.length > 0){
            let allSeats = svgImage.find("g[type='rect']");

            allSeats.each(function(){
                if($(this).attr('price') != undefined){
                    $(this).popover({
                        trigger: 'hover',
                        toggle: 'popover',
                        html: true,
                        content: "<div><b> ID : </b>"+ $(this).attr('positionid') + "</div>",
                    });
                }
            });
        }
    }

    function makeSVGEl(tag, attrs) {
        let el = document.createElementNS('http://www.w3.org/2000/svg', tag);
        for (let k in attrs) {
            el.setAttribute(k, attrs[k]);
        }
        return el;
    }

});





