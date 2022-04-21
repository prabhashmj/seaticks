
		
function myFunction() {
    // let x = document.getElementById("1");//.getElementsByTagName("rect");
  

	let x=document.getElementsByTagName("rect");
	//for(let d=0;d<2;d++){
	x[0].attr("price", "500.00");
	x[0].style.fill = "red";
	console.log(s);
	document.getElementById("demo").innerHTML =s;
   // document.getElementById("demo").innerHTML = x.length;

	}