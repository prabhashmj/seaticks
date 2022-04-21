<div class="row">
    <div class="col-sm-3">
        <button style="margin-left: 13px; margin-top: 50px;" id="createNewPlan" class="btn btn-success" data-link="$getCanvasIndexLink">Create new Seating plan</button>
    </div>
</div>
<br><br>
<% if $AllCanvasCharts %>
    <div class="row">
        <% loop $AllCanvasCharts %>
            <div class="col-sm-3">
                <div class="container">
                    <div style="background: rgba(25,150,150,0.6)" class="jumbotron">
                <h4>$Title</h4>
                <a class="text-primary exm2" id="canvasLink" href="{$Top.Link('getplan')}?ID={$ID}">
                <div style= "background-color:white">{$SVGImage.RAW}
                </div>
                    <h6>Edit Plan</h6></a>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
