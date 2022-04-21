
if(document.getElementById("spin1"))
    document.getElementById("spin1").style.display = "none";
if(document.getElementById("spin2"))
    document.getElementById("spin2").style.display = "none";
if(document.getElementById("spin3"))
    document.getElementById("spin3").style.display = "none";
if(document.getElementById("spin4"))
    document.getElementById("spin4").style.display = "none";
if(document.getElementById("wait"))
    document.getElementById("wait").style.display = "none";
if(document.getElementById("process"))
    document.getElementById("process").style.display = "none";
if(document.getElementById("thank"))
    document.getElementById("thank").style.display = "none";


$("#payForm").on("submit",function(e) {
    e.preventDefault(); // cancel submission
spinShow()
});
function spinShow() {
    document.getElementById("payFields").style.display = "none";
    document.getElementById("priceField").style.display = "none";
    document.getElementById("wait").style.display = "block";
    document.getElementById("process").style.display = "block";

    spin1();
    setTimeout(spin1off,2000);
    setTimeout(spin2,2000);
    setTimeout(spin2off,4000);

    setTimeout(spin3,4000);
    setTimeout(spin3off,6000);
    setTimeout(spin4,6000);
    setTimeout(spin4off,8000);
    setTimeout(thankyou,8000);
    setTimeout(redirecting,9000);

}
 function spin1() {
     document.getElementById("spin1").style.display = "block";
 }
function spin2() {
    document.getElementById("spin2").style.display = "block";
}
function spin3() {
    document.getElementById("spin3").style.display = "block";
}
function spin4() {
    document.getElementById("spin4").style.display = "block";
}

function spin1off() {
    document.getElementById("spin1").style.display = "none";
}
function spin2off() {
    document.getElementById("spin2").style.display = "none";
}
function spin3off() {
    document.getElementById("spin3").style.display = "none";
}
function spin4off() {
    document.getElementById("spin4").style.display = "none";
}
function thankyou() {
    document.getElementById("thank").style.display = "block";
    document.getElementById("processText").style.display = "none";
}
function redirecting() {
    window.location.replace("http://seaticks.pramesh/");
}
