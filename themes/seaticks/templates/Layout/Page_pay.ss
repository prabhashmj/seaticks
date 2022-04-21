
<h1 style="text-align: center; color: white;" id="wait">Please Wait...</h1>
<div style="margin-left: 50%;">
    <div id="spin1" class="spinner-grow text-danger"></div>
    <div id="spin2" class="spinner-grow text-warning"></div>
    <div id="spin3" class="spinner-grow text-info"></div>
    <div id="spin4" class="spinner-grow text-success"></div>
</div>
<div id="process" class="jumbotron" style="margin-left: 25%; width: 50%;">

<h2 id="processText" style="text-align: center;" > We are Processing your Payment...</h2>
<h2 id="thank" style="text-align: center;" > Thank You for using Seaticks.com</h2>
</div>
<div class="rows">
    <div id="payFields" class="col-75s">
        <div class="containers">
            <form id="payForm">

                <div class="rows">
                    <div class="col-50s">
                        <h3>Billing Address</h3>
                        <label style="color: #400a08" for="fname"><i class="fa fa-user"></i> Full Name</label>
                        <input type="text" id="fname" name="firstname" placeholder="John M. Doe" required>
                        <label style="color: #400a08" for="email"><i class="fa fa-envelope"></i> Email</label>
                        <input type="email" id="email" name="email" placeholder="john@example.com" required>
                        <label style="color: #400a08" for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                        <input type="text" id="adr" name="address" placeholder="542 W. 15th Street" required>
                        <label style="color: #400a08" for="city"><i class="fa fa-institution"></i> City</label>
                        <input type="text" id="city" name="city" placeholder="New York" required>

                        <div class="rows">
                            <div class="col-50s">
                                <label style="color: #400a08" for="state">State</label>
                                <input type="text" id="state" name="state" placeholder="NY" required>
                            </div>
                            <div class="col-50s">
                                <label style="color: #400a08" for="zip">Zip</label>
                                <input type="number" id="zip" name="zip" placeholder="10001" required>
                            </div>
                        </div>
                    </div>

                    <div class="col-50s">
                        <h3>Payment</h3>
                        <label style="color: #400a08" for="fname">Accepted Cards</label>
                        <div class="icon-containers">
                            <i class="fa fa-cc-visa" style="color:navy;"></i>
                            <i class="fa fa-cc-amex" style="color:blue;"></i>
                            <i class="fa fa-cc-mastercard" style="color:red;"></i>
                            <i class="fa fa-cc-discover" style="color:orange;"></i>
                        </div>
                        <label style="color: #400a08" for="cname">Name on Card</label>
                        <input type="text" id="cname" name="cardname" placeholder="John More Doe" required>
                        <label style="color: #400a08" for="ccnum">Credit card number</label>
                        <input type="number" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" maxlength="16" required>
                        <label style="color: #400a08" for="expmonth">Exp Month</label>
                        <input style="color: #400a08" type="number" id="expmonth" name="expmonth" placeholder="September" min="1" max="12" required>
                        <div class="rows">
                            <div class="col-50s">
                                <label style="color: #400a08" for="expyear">Exp Year</label>
                                <input type="number" id="expyear" name="expyear" placeholder="2018" min="1990" max="2099" required>
                            </div>
                            <div class="col-50s">
                                <label style="color: #400a08" for="cvv">CVV</label>
                                <input type="number" id="cvv" name="cvv" placeholder="352" maxlength="3" required>
                            </div>
                        </div>
                    </div>

                </div>
                <label>
                    <input type="checkbox" checked="checked" name="sameadr"> I agree to the Terms of Service of Seaticks and the Privacy Policy
                </label>
                <input type="submit" value="Continue to checkout" id="success" class="waves-effect waves-light btns">
            </form>
        </div>
    </div>
    <div class="col-25s">
        <div class="containers" id="priceField">
            <h4 style=" margin-top: 20px; color: #0d780f">Total <span class="prices" style="color:black"><i class="fa fa-shopping-cart"></i> <b>Rs.$Price</b></span></h4>
        </div>
    </div>
</div>
