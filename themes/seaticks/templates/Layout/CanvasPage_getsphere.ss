<script src="$resourceURL('themes/seaticks/javascript//three.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/polyfill.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/uevent.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/doT.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/NoSleep.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/photo-sphere-viewer.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/jquery.contextMenu.min.js')"></script>
<script src="$resourceURL('themes/seaticks/javascript/jquery.ui.position.min.js')"></script>

<div class="row" id='sphere-editor' data-link="$getCanvasIndexLink" data-id="$ID">
    <div class="col-sm-12 col-lg-6 col-md-12 col-xl-6" id="svgImage" style= "border: 1px solid black;">$SVG.RAW</div>
    <div class="col-sm-12 col-lg-6 col-md-12 col-xl-6" id="photosphere" data-image="$Image.AbsoluteURL" data-markers="$Markers" data-link="{$getCanvasIndexLink}" data-id="{$ID}" data-editable="true"></div>
</div>

<div class="row">
    <div class="col-md-12 col-sm-12 col-lg-12 col-xl-12" style="margin-top: 10px;padding: 5px;text-align: center;">
        <button class="btn btn-info" id="finish360"  style="position: relative;width: 10%;height: auto">finish</button>
    </div>
</div>
