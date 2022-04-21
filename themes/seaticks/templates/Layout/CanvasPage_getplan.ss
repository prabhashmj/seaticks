
<div id="code" data-link="{$getCanvasIndexLink}" data-id="{$ID}" data-sphere="$Sphere.Image.ID" data-editsphere="$Link"></div>
<div class="container-fluid p-3 my-0 bg-dark text-white" >
    <div class="row">
        <h2 style="color: white; margin-left: 45%;">$Title</h2>

        <div id="modals" class="container">
            <div class="row" >
                <div class="col-md-6" >
                    <div id="myShortKeyModal" class="modal">
                        <!-- Modal content -->
                        <div class="modal-content modal-small">
                            <div class="modal-header">
                                <h4 style="color: darkgreen" class="left">Keyboard Shortcuts</h4>
                                <span id="closeShortKey" class="close" style="color: black;">&times;</span>
                            </div>
                            <div class="modal-body">

                                <div  class="select-button">
                                    <h4 style="text-align: left; margin-left: -50%;">Delete One Object = Delete<br>
                                        Delete All = Ctrl + Delete<br>
                                        Copy = Ctrl + C<br>
                                        Paste = Ctrl + V<br>
                                        Bold = Ctrl + B<br>
                                        Italic = Ctrl + I<br>
                                        Underline = Ctrl + Shift + U<br>
                                        Regular = Ctrl + Q<br>
                                        Save = Ctrl + Shift + S<br>
                                        Add one Seat = Shift + N<br>
                                        Lock an Object = Ctrl Shift + L<br>
                                        Unlock an Object = Ctrl Shift + K<br>


                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    </div>
    <div class="container-fluid" style="width:100%;margin-top: 0px; ">
        <button style="font-size:1.1vw; margin-left: 90%; "  type="button" id="ShortKeys" class="btn btn-outline-info " >ShortKeys</button>

        <div class="row" style="min-height:140px; margin-top: 10px;">

            <div class="col-md-3" >

                <p><h4><b>Object <mark>Height</mark> and <mark>Width.</mark></b></h4></p>
                <div id="demo"></div>
            </div>
            <div class="col-md-3" >
                <p><h4><b>Object Details</b></h4></p>

                <div id="objData">
                    <span id="objData-type"></span>
                    <span id="objData-price"></span>
                    <span id="objData-color"></span>
                    <span id="objData-availability"></span>
                    <span id="objData-id"></span>
                    <span id="objData-left"></span>
                    <span id="objData-top"></span>
                    <span id="objData-code"></span>
                    <span id="objData-photo"></span>

                </div>
            </div>
            <div class="col-md-3" >
                <p><h4><b>Mouse <mark>x</mark> and <mark>y</mark> coordinates</b></h4></p>
                <div id="nemo"></div>
            </div>
            <div class="col-md-3" >
                <p><h4><b>NO of Obj:</b></h4></p>

                <div id="objCount"></div>
            </div>
        </div>
    </div>
    <div class="container-fluid"  id="tools5" >
        <div class="d-flex justify-content-between align-items-end   text-white">



            <button style="font-size:1.1vw; "  type="button" id="makeUnselectable" class="btn btn-outline-info " >Unselectable</button>
                <button style="font-size:1.1vw; "  type="button" id="makeSelectable" class="btn btn-outline-info ">Selectable</button>
                <button style="font-size:1.1vw; "  type="button" id="styleFont" class="btn btn-outline-info " ><span class="glyphicon glyphicon-italic">Italic</span></button>
                <button style="font-size:1.1vw; "  type="button" id="bold" class="btn btn-outline-info "><b>B Bold</b></button>
                <button style="font-size:1.1vw; "  type="button" id="regular" class="btn btn-outline-info "><b>Regular</b></button>
                <button style="font-size:1.1vw; "  type="button" id="underlineText" class="btn btn-outline-info "><u>U</u> Underline</button>
                <button style="font-size:1.1vw; "  type="button"  id="enable" class="btn btn-outline-info" ><span class="glyphicon glyphicon-pencil"> DrawLine</span></button>
                <button style="font-size:1.1vw; "  type="button" class="btn btn-outline-info " id="save2Png">Save as png </button>
                        <input style="font-size:1.1vw; width: 100px; margin-bottom: 0px;"  type="text" id="stroke" size="3" placeholder="0.03" class="form-control ml-auto">
                        <button style="font-size:1.1vw; " type="button" class="btn btn-info" id="strokeSet">Set Stroke</button>

        </div>



        <div class="row"  style="margin-top: 5px; margin-bottom: 5px; background: #404939;" >
            <div class="col-sm-6 col-lg-2 col-xl-2" style="margin-top: 5px">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-5 col-sm-5 col-xs-5">
                        <input style="font-size:1.1vw;border: 2px solid #785062; border-radius: 4px;margin-bottom: 5px;"  type="text" id="opa" size="3" placeholder="0<val<1" class="form-control">
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-7 col-sm-7 col-xs-7">
                        <button style="font-size:1.1vw; background-color: #785062 " type="button" class="btn btn-info" id="opacitySet">Set opacity</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 col-xl-3" style="margin-top: 5px">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <input style="font-size:1.1vw; border: 2px solid #87858a; border-radius: 4px;" type="text" id="txt" placeholder="Text" class="form-control" >
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <input style="font-size:1.1vw; border: 2px solid #87858a; border-radius: 4px;" type="text" id="fnt"  maxlength="3" size="2" placeholder="Size(default-24)" value="24" class="form-control" >
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <button style="font-size:1.1vw; background-color: #9c8c7a" type="button" id="textAdd" class="btn btn-secondary" value="Addtexton">Add text</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-4" style="margin-top: 5px">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <input style="font-size:1.1vw; border: 2px solid #30a72d; border-radius: 4px;" class="form-control" id="ex3" value="" size="50" type="text" placeholder="no of rows">
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <input style="font-size:1.1vw; border: 2px solid #30a72d; border-radius: 4px;"  class="form-control" id="ex4" type="text" placeholder="no of cols">
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <button style="font-size:1.1vw; " class="btn btn-success" id="addSeats" >Get seatpack</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 col-xl-3" style="margin-top: 5px">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <input style="font-size:1.1vw;border: 2px solid #23707d; border-radius: 4px; " class="form-control" id="priceID" value="" type="number" placeholder="price" min="0">
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <button style="font-size:1.1vw; " class="btn btn-info" id="PricingID" >Set Price</button>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <hr />


    <div class="container-fluid"  >

        <div class="d-flex flex-row ">
                    <button style="top:20px; margin-left:95px;" type="button" id="setSeatNo" class="btn btn-success"  ><span>Set Seat Numbers</span></button>
                    <br>
                    <h4 id="h4"><span id="firstSeat" ></span></h4>
                    <div  id="tools1">
                        <%--<h5 class="h5">Elements:</h5>--%>
                        <button type="button" id="addOneSeat" class="btn btn-info btn-sm" ><span aria-hidden="true"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-square-fill" fill="White" xmlns="http://www.w3.org/2000/svg">
  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2z"/></svg></span><b style="color: white">   &nbsp &nbsp Seat</b></button>
                        <button type="button" id="addCircle" class="btn btn-outline-info btn-sm" ><span aria-hidden="true"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-circle-fill" fill="white" xmlns="http://www.w3.org/2000/svg">
  <circle cx="8" cy="8" r="8"/>
</svg></span></button>
                        <button type="button" id="createRectangle" class="btn btn-outline-info btn-sm" ><span aria-hidden="true"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-square-fill" fill="white" xmlns="http://www.w3.org/2000/svg">
  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2z"/>
</svg></span></button>

                        <button type="button" id="addTriangle" class="btn btn-outline-info btn-sm" ><span aria-hidden="true"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-triangle-fill" fill="white" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M7.022 1.566a1.13 1.13 0 0 1 1.96 0l6.857 11.667c.457.778-.092 1.767-.98 1.767H1.144c-.889 0-1.437-.99-.98-1.767L7.022 1.566z"/>
</svg></span></button>
                        <%--<h5>Controls:</h5>--%>
                        <button id="sendBackwards" class="btn btn-outline-warning" >Send backwards</button>
                        <button id="sendBack" class="btn btn-outline-warning" >Send to back</button>
                        <button id="bringForwards" class="btn btn-outline-warning" >Bring forwards</button>
                        <button id="bringFront" class="btn btn-outline-warning" >Send to front</button>
                        <button type="button" class="btn btn-outline-success" id="itemLock"><span class="glyphicon glyphicon-lock">Lock</span></button>
                        <button type="button" class="btn btn-outline-success" id="itemUnlock">Unlock</button>
                        <button type="button" class="btn btn-outline-light" id="borderRemove">Remove border</button>
                        <button id="copy" class="btn btn-outline-primary" >Copy</button>
                        <button id="paste" class="btn btn-outline-primary" >Paste</button>
                        <button type="button" id="deleteObjects" class="btn btn-outline-danger" ><span class="glyphicon glyphicon-remove">ClearCanvas </span> </button>
                        <button type="button" id="deleteSelected" class="btn btn-outline-danger"  ><span class="glyphicon glyphicon-trash"> Delete </span></button>
                    </div>
                </div>
            </div>














    <div class="container">
        <div class="row" >
            <div class="col-md-6" >
                <div id="myModal" class="modal">
                    <!-- Modal content -->
                    <div class="modal-content modal-small">
                        <div class="modal-header">
                            <h4 style="color: darkgreen" class="left">Set Alphabet to Seat Row</h4>
                            <span id="closeThis" class="close">&times;</span>
                        </div>
                        <div class="modal-body">
                            <div  class="box">
                                <form>
                                    <label><h4>Alphabet: <span id="letters" ></span></h4></label>
                                    <select class="selectMenu"  id="dropList">
                                    </select>
                                </form>
                                <br><br>
                            </div>
                            <div class="select-button">
                                <button  style="margin-top: 45px; margin-left: -20px;" class="btn btn-warning" id="selectLetter">Select</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</div>
<div class="container-fluid">
    <div class="row">

        <div class="col-lg-1 p-3 my-0 bg-dark text-white" >
            <div class="d-flex flex-column ">
                <div >
                    <button style="width:100%; margin-top: 20px; margin-bottom: 10px;" class="btn btn-info " id="previous"  disabled="disabled"   >Previous</button>
                    <button style="width:100%; margin-bottom: 20px; margin-top: 20px;" class="btn btn-warning" id="idSet"  >Next</button>
                    <form id="360uploadform">
                        <button style="width:100%; margin-bottom: 10px;" class="btn btn-info btn-md" id="upload360"  disabled="disabled"   >Upload New 360</button>
                        <input type="file" id="360file" style="display: none"/>
                    </form>
                    <button style="width:100%; margin-bottom: 10px;" class="btn btn-info" id="edit360"  >Edit 360</button>
                    <button style="width:100%;" class="btn btn-outline-info" id="skip"  disabled="disabled"  >Next</button>
                    <button style="width:100%;" class="btn btn-outline-info" id="skip1"    >Next</button>
                    <button style="width:100%;" class="btn btn-info" id="finish"  disabled="disabled"   >finish</button>
                </div>
                <div  id="tools2">

                    <input style="width: 100%; height:40px;" name="colorpicker" type="color" id="colorpicked">
                    <button style="width: 100%; margin-bottom: 20px;" type="button" class="btn btn-info btn-md" id="clrBtn">Set Color</button>
                    <div style="margin-left: 20px; margin-bottom: 10px;">
                        <button type="button"  id="box" class="btn btn-outline-info" ><span aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" width="24px" height="24px" version="1.1" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" image-rendering="optimizeQuality" fill-rule="evenodd" clip-rule="evenodd"
viewBox="0 0 32 32"
 xmlns:xlink="http://www.w3.org/1999/xlink">
 <g id="Layer_x0020_1">
  <metadata id="CorelCorpID_0Corel-Layer"/>
  <rect fill="none" stroke="White" stroke-width="5" x="1" y="1" width="30.8234" height="30.8234"/>
 </g>
</svg></span></button>


                    <button type="button" id="circleStroke"  class="btn btn-outline-info" ><span><svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" width="24px" height="24px" version="1.1" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" image-rendering="optimizeQuality" fill-rule="evenodd" clip-rule="evenodd"
viewBox="0 0 34 34"
 xmlns:xlink="http://www.w3.org/1999/xlink">
 <g id="Layer_x0020_1">
  <metadata id="CorelCorpID_0Corel-Layer"/>
  <circle fill="none" stroke="white" stroke-width="3" cx="17" cy="17" r="16"/>
 </g>
</svg></span></button>
                    <button type="button" id="TriangleStroke"  class="btn btn-outline-info" ><span><svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" width="24px" height="24px" version="1.1" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" image-rendering="optimizeQuality" fill-rule="evenodd" clip-rule="evenodd"
viewBox="0 0 232 201"
 xmlns:xlink="http://www.w3.org/1999/xlink">
 <g id="Layer_x0020_1">
  <metadata id="CorelCorpID_0Corel-Layer"/>
  <line fill="none" stroke="white" stroke-width="20" x1="3" y1="198" x2="229" y2= "198" />
  <line fill="none" stroke="white" stroke-width="20" x1="3" y1="198" x2="116" y2= "1" />
  <line fill="none" stroke="white" stroke-width="20" x1="116" y1="2" x2="229" y2= "198" />
 </g>
</svg></span></button>

                </div>
                    <button style="width: 100%" type="button" id="plane"  class="btn btn-outline-success" >Airplane</button>
                    <button style="width: 100%" type="button" id="bus"  class="btn btn-outline-success" >Bus</button>
                    <button style="width: 100%" type="button" id="door"  class="btn btn-outline-success" >Door</button>

                </div>
            </div>
        </div>


        <div class="col-lg-11 col-md-12" id="canvas-wrapper" style= "border: 1px solid black;background-color:white"height="600" width="100%" >
            <canvas id="c1" height="600" width="100%" >

            </canvas>
        </div>
    </div>
</div>


