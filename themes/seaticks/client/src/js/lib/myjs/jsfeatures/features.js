


// JavaScript Document
//delete canvas
//
// //Functions for features in the canvas ===========================================================================================
// //separate>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// let deleteCanvas = $("#deleteObjects");
// if(deleteCanvas && deleteCanvas.length>0) {
//     deleteCanvas.click(function () {
//
//         if (confirm("Are You Sure??") == true) {
//             canvas.clear();
//             rectangle = [];
//             id = [];
//             let t = rectangle.length;
//             document.getElementById("pemo").innerHTML = "No of objects:" + t;
//         } else {
//
//         }
//
//     });
// }
//
//
//
//
// 		//delete selected object
// 		function seldel(){
// 			try{
// 					let objgroup=canvas.getActiveObjects();
// 				let l=canvas.getActiveObject();
// 				if(objgroup){
// 	            for(let i=0;i<rectangle.length;i++){
//
// 		            for(let q=0;q<objgroup.size();q++){
// 				if(objgroup.item(q)==rectangle[i]){
//
//
// 						rectangle.splice(i,1);
// 					 canvas.remove(objgroup.item(q));
// 					//break;
// 					}
// 				    }
// 					}}
//
// 				if(l){
// 					for(let i=0;i<rectangle.length;i++){
// 						if(l==rectangle[i]){
// 						rectangle.splice(i,1);
// 					 canvas.remove(canvas.getActiveObject());
// 					//break;
// 					}
//
// 					}
// 				}
//
// 				let t=rectangle.length;
// 		            document.getElementById("pemo").innerHTML  ="No of objects:"+t;
// 					console.log(rectangle.length);
//
// 			    }catch(err){}
//
//
// 		}
//
//
// 		/*
// 		//delete  object using id
// 		function cmdDel(){
//
// 			canvas.remove(rectangle[0]);
//
// 			}*/
//
// 		//set opacity of the obj
// function test(){
// 	let ob;
// 	ob=document.getElementById("opa").value;
//
// 	if(ob==""){alert("Set opacity value in Text box");}
//
// 	else{
//
// 	if((parseInt(ob)>1)|(parseInt(ob)<0)){alert("Set value between 0-1")}
// 	else{
// 		let objgroup=canvas.getActiveObjects();
// 		let obj=canvas.getActiveObject();
// 	if(obj){
//
// 			obj.setOpacity(ob);
// 		    canvas.renderAll();
// 	}
// 	if(objgroup){
// 	if(objgroup.size()>1){
// 		objgroup.setOpacity(ob);
// 		    canvas.renderAll();
//
// 		}}
// 	if(!obj & !objgroup){
// 	            alert("There is no selected object to set opacity")
// 	                     }
// 	}
// 	}
// 	}
//
//
// //remove border of obj
// function border(){
// 	try{
// 		let objgroup=canvas.getActiveObjects();
// 		let obj=canvas.getActiveObject();
// 		 if(objgroup){
// 		  if(objgroup.size()>1){
// 			objgroup.setStroke("");
// 			objgroup.setStrokeWidth("");
// 			canvas.renderAll();
// 			  }}
// 	if(obj){
// 			obj.setStroke("");
// 			obj.setStrokeWidth("");
// 			canvas.renderAll();
// 	       }
// 		   if(!obj & !objgroup)
//
// 	  {
// 		  alert("Object not selected");
// 	  }
// 	}catch(err){}
//   }
//
//   //lock the item that selected
// function lock(){
// 	try{
// 	let o=canvas.getActiveObject();
// 	let objgroup=canvas.getActiveObjects();
// 	if(objgroup){
// 	if(objgroup.size()>1)
// 	{
// 		for(let q=0;q<objgroup.size();q++){
//
//     objgroup.item(q).lockMovementX = true;
//     objgroup.item(q).lockMovementY = true;
// 	objgroup.item(q).lockRotation = true;
// 	 objgroup.item(q).lockScalingX = objgroup.item(q).lockScalingY = true;
// 	}
// 	}
// 	}
// 	if(o){
//     o.lockMovementX = true;
//     o.lockMovementY = true;
// 		}
// 		if(!obj & !objgroup)
// 	{alert("There is no object to unlock");}
// 	}catch(err){}
// }
// //unlock the item that selected
// function unlock(){
// 	try{
// 	let o=canvas.getActiveObject();
// 	let objgroup=canvas.getActiveObjects();
// 	if(objgroup){
// 	if(objgroup.size()>1)
// 	{
// 		for(let q=0;q<objgroup.size();q++){
//
//     objgroup.item(q).lockMovementX = false;
//     objgroup.item(q).lockMovementY = false;
// 	objgroup.item(q).lockRotation = false;
// 	 objgroup.item(q).lockScalingX = objgroup.item(q).lockScalingY = false;
// 	}
// 	}
// 	}
// 	if(o){
//     o.lockMovementX = false;
//     o.lockMovementY = false;
// 	}
// 	if(!obj & !objgroup)
//
// 		{alert("There is no object to unlock");}
// 	}catch(err){}
// }
//
//   /**
//    * Moves an object to the bottom of the stack of drawn objects
//    * @return {fabric.Object} thisArg
//    * @chainable
//    */
//   function sendToBack() {
// 	  	let obj=canvas.getActiveObject();
// 		 if(!obj)
// 	  {alert("Please Select a object");
// 	  }
// 	if(obj){
//
//       this.canvas.sendToBack(obj);
//     }
//
//   }
//
//   /**
//    * Moves an object to the top of the stack of drawn objects
//    * @return {fabric.Object} thisArg
//    * @chainable
//    */
//   function bringToFront() {
//       	let obj=canvas.getActiveObject();
// 		 if(!obj)
// 	  {alert("Please Select a object");
// 	  }
// 	if(obj){
//
//       this.canvas.bringToFront(obj);
//     }
//
//   }
//
//   /**
//    * Moves an object down in stack of drawn objects
//    * @param {Boolean} [intersecting] If `true`, send object behind next lower intersecting object
//    * @return {fabric.Object} thisArg
//    * @chainable*/
// function sendBackwards(intersecting) {
//    let obj=canvas.getActiveObject();
//     if(!obj)
// 	  {alert("Please Select a object");
// 	  }
// 	if(obj){
//       obj.canvas.sendBackwards(obj, intersecting);
//     }
//
//   }
//
//   /**
//    * Moves an object up in stack of drawn objects
//    * @param {Boolean} [intersecting] If `true`, send object in front of next upper intersecting object
//    * @return {fabric.Object} thisArg
//    * @chainable
//    */
//   function bringForward(intersecting) {
//      let obj=canvas.getActiveObject();
// 	 if(!obj)
// 	  {alert("Please Select a object");
// 	  }
// 	if(obj){
//       obj.canvas.bringForward(obj, intersecting);
//     }
//
//
//
//   }
//
//
// //set font style
// function Style(){
// 		let obj=canvas.getActiveObject();
// 		if(!obj)
// 	  {
// 		  alert("Text not selected");
// 	  }else{
// 	if(obj.type=="i-text"){
// 			obj.setFontStyle("italic");
// 			console.log(obj.type);
// 			canvas.renderAll();
// 	       }
// 	  }
//
//   }
//
//
//   function underline(){
// 		let obj=canvas.getActiveObject();
// 		 if(!obj)
// 	  {
// 		  alert("Text not selected");
// 	  }else{
// 	if(obj.type=="i-text"){
// 			obj.setTextDecoration("underline");
// 			console.log(obj.type);
// 			canvas.renderAll();
// 	       }
// 	  }
//
//   }
//
//
//
//   function bold(){
// 		let obj=canvas.getActiveObject();
// 		 if(!obj)
// 	  {
// 		  alert("Text not selected");
// 	  }else{
// 	if(obj.type=="i-text"){
// 			obj.setFontStyle("bold");
// 			console.log(obj.type);
// 			canvas.renderAll();
// 	       }
//
// 	  }
//   }
//
//
//    function family(){
//
// 		let obj=canvas.getActiveObject();
// 	if(obj.type=="i-text"){
// 			obj.setFontFamily("Times New Roman");
// 			console.log(obj.type);
// 			canvas.renderAll();
// 	       }
//
// 	  else
// 	  {
// 		  alert("Text not selected");
// 	  }
//   }
//
//
//
// /*
//  function group(){
// 	 let a=[];
// 	 let group=canvas.getActiveObjects();
// 	 if(group){
//
//
// 		 let n=group.size();
// 		 alert("group");
// 		 //let d=group.item(1).get("type");
// 		 console.log("size"+n);
// 		// console.log(d)
// 		 // create a group with copies of existing (2) objects
// 		 for(let f=0;f<group.size();f++){
// 		for(let q=0;q<rectangle.length;q++){
// 			if(group.item(f)==rectangle[q])
// 			{
// 				a[f]=rectangle[q].clone();
// 				//canvas.remove(canvas.getActiveObjects());
// 				break;
// 				//rectangle.splice(q,1);
//
// 		    }
// 		}
// console.log("a.length"+a.length);  }
//
// 		 canvas.remove(canvas.getActiveObjects());
//
// let group1 = new fabric.Group();
// for(let g=0;g<a.length;g++){
// group1.add(a[g]);
// }
// canvas.add(group1,{ left: 300,
//   top: 400});
//
// console.log("a.length"+a.length);
// console.log("group1.size"+group1.size());
// a.length=0;
// 		 }
//
//
// 	 else{alert("no group")}
//
// 	 }*/
//
//
// //set the price of seat
// function  priceSet(){
// 	try{
// 		let obj=canvas.getActiveObject();
// 		let objgroup=canvas.getActiveObjects();
// 	if(obj.type=="rect"){
//        let w= $("#ex2").val();
// 	   obj.set("price",w);
//
//
// 	       }
//
// 	 /* else
// 	  {
// 		  alert("please select rectangle shape");
// 	  }*/
// 	}catch(err){}
//



  
  
