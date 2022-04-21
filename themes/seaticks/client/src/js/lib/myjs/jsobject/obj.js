// JavaScript Document
let rectangle=[];
let length=rectangle.length;



 let canvas = new fabric.Canvas('c1');
 canvas.selection = true;
  
 
 
 
 
 
 
 
 
 
 
 
 /*function addCirecle(){
        canvas.add(new fabric.Circle({
			 radius: 30, fill: '#0f5', top: 100, left: 100 }));

        canvas.selectionColor = 'rgba(0,255,0,0.3)';
        canvas.selectionBorderColor = 'red';
        canvas.selectionLineWidth = 5;
 }
		
	*/	
	
	/*
		//delete canvas
		function del(){
		canvas.clear();
		for(let r=0;r<rectangle.length;r++){
		delete rectangle[0];
		}
		document.getElementById("pemo").innerHTML  ="No of objects:"+rectangle.length;

		}
		
		
		

		//delete selected object
		function seldel(){
		canvas.remove(canvas.getActiveObject());
		document.write=rectangle.length;

		}
		
		//delete  object using id
		function cmdDel(){
			
			canvas.remove(rectangle[0]);
			
			}
		
	*/	
		
		

		
		
		
		
		
		



//create rectangle
//add to array
//and add to canvas
// function createRect(){
// rectangle.push(new fabric.Rect({
//   width: 50,
//   height: 50,
//   left: 50,
//   top: 50,
//   fill: 'DarkSalmon',
//   strokeWidth:0.3,
//   stroke:'black',
//   id:rectangle[length-1]
// }));
//
//
// let l=rectangle.length;
// canvas.add(rectangle[l-1]);
// document.getElementById("pemo").innerHTML  ="No of objects:"+rectangle.length;
// //canvas.setActiveObject(canvas.item(reactngle[l-1]));
//
// }




//create circle
//add to array
//and add to canvas
// function createCircle(){
//
// 	rectangle.push(new fabric.Circle({
// 			 radius: 30,
// 			  fill: 'coral',
// 			   top: 100,
// 			    left: 100,
// 				strokeWidth:0.3,
// 		         stroke:'black',
// 				 opacity:'1',
// 				id:rectangle[length-1]
// 				 }));
//
//         canvas.selectionColor = 'rgba(0,255,0,0.3)';
//         canvas.selectionBorderColor = 'red';
//         canvas.selectionLineWidth = 5;
// 	let i=rectangle.length;
// 	canvas.add(rectangle[i-1]);
//     document.getElementById("pemo").innerHTML  ="No of objects:"+rectangle.length;
//
//
// 	}

//
// function createTriangle(){
//
// rectangle.push(new fabric.Triangle({
//     width: 100,
// 	 height: 100,
// 	  left: 50,
// 	   top: 300,
// 	    fill: 'GoldenRod',
// 		strokeWidth:0.3,
// 		stroke:'black',
// 		id:rectangle[length-1]
// 		  }));
// let o=rectangle.length;
// canvas.add(rectangle[o-1]);
// document.getElementById("pemo").innerHTML  ="No of objects:"+rectangle.length;
//
// }

//Add text to canvas
// function text(){
// 	let txt;
// 	txt=document.getElementById("txt").value;
// 	if(txt==""){alert("Type some text in text field");}
// 	else{
// rectangle.push( new fabric.Text(txt, {
// 	 left: 100,
// 	  top: 300,
// 	  fill: 'GoldenRod'
//
// 	   }));
// let o=rectangle.length;
// canvas.add(rectangle[o-1]);
// document.getElementById("pemo").innerHTML  ="No of objects:"+rectangle.length;
//
// 	}
// 	}
	
	
/*	
	//save as png
function save2() {
	//let win=window.open();
      window.open(canvas.toDataURL('png'));
      let gh=(canvas.toDataURL('png'));+
      alert("converted");
 
    }
	
	
	//save as SVG
	function saveSvg(){
		let z=canvas.toSVG();
		console.log(canvas.toSVG());
		document.getElementById("uemo").innerHTML  ="SVG Image"+z;
		alert("Successfuly Saved");
		}
		
		//save as JSON
	function saveJson(){
	let json=JSON.stringify(canvas);
		console.log(json);
		alert("Successfuly Saved");
		
		}	
		
		
	*/	
	
    //--------------end canvas to png image-----------------------
	
//
// 	//get width and hight of object
// canvas.on('object:scaling', onObjectScaled);
//
// function onObjectScaled(e)
// {
// 	let scaledObject = e.target;
// 	//console.log('Width =  '+scaledObject.getWidth());
// 	//console.log('Height = '+scaledObject.getHeight());
// 	document.getElementById("demo").innerHTML  ="Height = "+Math.round(scaledObject.getHeight())+" "+"Width =  "+Math.round(scaledObject.getWidth());}
// 	//let text = new fabric.Text("Height = "+scaledObject.getHeight(), { left: 100, top: 300 });
// 	//fabric.add(text);
//
// //canvas.add(text);






//get xand y coodinates of selected object
 canvas.on('mouse:move', function(options) {
  if (options.target) {
   // console.log(options.target.getLeft(), options.target.getTop());
	let x= Math.round(options.target.getLeft());
	let y= Math.round(options.target.getTop());
	document.getElementById("memo").innerHTML  ="Left="+x+"  "+"Top="+y;
	let s=document.getElementById("s").innerHTML = x+''+ y;
	

	
	
	  }
});




//get x and y coodinates of mouse pont
  canvas.on('mouse:move', function(options) {
 // console.log(options.e.clientX, options.e.clientY);
  document.getElementById("nemo").innerHTML  ="x = "+Math.round(options.e.clientX)+"  "+"y =  "+Math.round(options.e.clientY);
  });
  
  
  
  
 /*function logCoordinates(ctx){ 
      console.log('Left: ' + ctx.target.getLeft() + ' Top: ' + ctx.target.getTop()); 
  } 

  canvas.on ({ 
      'object:moving': logCoordinates 
  }); 
*/





/*
//change color of object using letiables
function changecolor(o){
	let v=o;
	let obj=canvas.getActiveObject();
	if(obj){
			obj.setFill(v);
	       }
      canvas.renderAll();
  
}

function cl(){
	let cn=document.getElementById("cn").getAttribute("style");
	let n = cn.search(":");
    let an = cn.search(";");
    let res = cn.substr((n+1),(an-2));
    document.getElementById("bl").innerHTML = res;
	changecolor(res);
	
	}
*/



/*

//set opacity of the obj
function test(){
	let ob;
	ob=document.getElementById("opa").value;
	if(ob==""){alert("There is no object to set opacity");}
	else{
	if((parseInt(ob)>1)|(parseInt(ob)<0)){alert("Set value between 0-1")}
	else{
		let obj=canvas.getActiveObject();
	if(obj){
		
			obj.setOpacity(ob);
		    canvas.renderAll();
	}
	}
	}
	}










//remove border of obj
function border(){
		let obj=canvas.getActiveObject();
	if(obj){
			obj.setStroke("");
			obj.setStrokeWidth("");
			canvas.renderAll();
	       }
		   
	  else
	  {
		  alert("Object not selected");
	  }
  } 
*/

//commented to eliminate an error in console

//
// let group = new fabric.Group([ rectangle[0], rectangle[1], rectangle[3] ], {
//   left: 200,
//   top: 100
// });
//
// canvas.add(group);
//
//

/*
//lock the item that selected
function lock(){
	
	let o=canvas.getActiveObject()
	if(o){
    o.lockMovementX = true;
    o.lockMovementY = true;
	
	}
}
//unlock the item that selected
function unlock(){
	
	let o=canvas.getActiveObject()
	if(o){
    o.lockMovementX = false;
    o.lockMovementY = false;
	
	}
}

*/



/*function loadSvg(){
	let canvas = new fabric.Canvas('c2');
	canvas.loadFromJSON('\"'+json+'\"');
	
	
//let svg;
	// svg = new String('');

//let canvas = new fabric.Canvas('c2');
//fabric.loadSVGFromString(svg, function(objects, options) {
    //let obj = fabric.util.groupSVGElements(objects, options);
    //canvas.add(obj).renderAll();
//});
	
	
	
	
	
	
/*	let r=canvas.toSVG();
	//let vas = new fabric.Canvas();

	fabric.loadSVGFromString('<svg></svg>', function(objects, options) {
  let obj = fabric.util.groupSVGElements(objects, options);
  canvas.add(obj).renderAll();
});*/

/*
//set obgect to noneselectable
function nonselectable(){
	
		
	let cn=document.getElementById("lck").getAttribute("value");
	if(cn=='Lockobject'){
		let obj=canvas.getActiveObject();
if(obj){
	 obj.selectable = false;
	 document.getElementById("lck").setAttribute("value",'Unlockobject');
	 	 document.getElementById("lck2").innerHTML=document.getElementById("lck").getAttribute("value");

}
else{alert("object not selected!");}
	}
}
*/

	
	
	
	
	
	
	
	
	
/*	
	
	//get selected object type
	canvas.on('object:selected', onObjectSelected);
	 
		function onObjectSelected(e) {
  console.log(e.target.get('type'));
  document.getElementById("kemo").innerHTML  =JSON.stringify(rectangle[0]);
}

*/







//get all attributes of objects
function setId(){
	if(rectangle.length==0){
		alert("There is no object to save");
	}else
	{
		try{
	for (let j=0;j<rectangle.length;j++){
  console.log(rectangle[j].get('type'));
    console.log(rectangle[j].get('originX'));
	  console.log(rectangle[j].get('originY'));
	    console.log(rectangle[j].get('left')); 
		 console.log(rectangle[j].get('top'));
		  console.log(rectangle[j].get('width'));
		    console.log(rectangle[j].get('height'));
			  console.log(rectangle[j].get('fill'));
			    console.log(rectangle[j].get('stroke'));
				  console.log(rectangle[j].get('strokeWidth'));
				    console.log(rectangle[j].get('strokeDashArray'));
				     console.log(rectangle[j].get('strokeLineCap'));
				       console.log(rectangle[j].get('strokeLineJoin'));
				        console.log(rectangle[j].get('strokeMiterLimit'));
					 console.log(rectangle[j].get('scaleX'));
				   console.log(rectangle[j].get('scaleY'));
				 console.log(rectangle[j].get('angle'));
			  console.log(rectangle[j].get('flipX'));
			console.log(rectangle[j].get('flipY'));
		console.log(rectangle[j].get('opacity'));
	console.log(rectangle[j].get('shadow'));
console.log(rectangle[j].get('visible'));
	 console.log(rectangle[j].get('clipTo'));
		console.log(rectangle[j].get('backgroundColor'));
		  console.log(rectangle[j].get('fillRule'));
			 console.log(rectangle[j].get('globalCompositeOperation'));
	           console.log(rectangle[j].get('rx'));
		        console.log(rectangle[j].get('ry'));
	}
	}catch(err)
	{alert(err);}
	
		

	}
	/*
for(let y=0;y<length;y++){
	
rectangle[y].toObject = function() {
  return { ID: length-1 };
}
console.log(JSON.stringify(canvas));
}*/
}
//document.getElementById("demo").innerHTML =rectangle[0].toString();
	

