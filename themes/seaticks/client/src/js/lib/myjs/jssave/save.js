// // JavaScript Document
// //save as png
// let saveToPng=$("#save2Png");
//     if (saveToPng && saveToPng.length>0) {
//         saveToPng.click(function () {
//
//                 //let win=window.open();
//                 window.open(canvas.toDataURL('image/png'));
//                 let gh = (canvas.toDataURL('png'));
//
//                 let a = document.createElement('a');
//                 a.href = gh;
//                 a.download = 'image.png';
//
//                 a.click();
//                 alert("converted");
//
//
//         });
//     }
//
// 	//save as SVG
// 	function saveSvg(){
// 		let z=canvas.toSVG();
// 		console.log(canvas.toSVG());
// 		//document.getElementById("uemo").innerHTML  ="SVG Image"+z;
//
// 		 $(document).ready(function(){
//
//                     function showComment(){
//                       $.ajax({
//                         type:"post",
//                         url:"process2.php",
//                         data:"action=showcomment",
//                         success:function(data){
//                              $("#comment").html(data);
//                         }
//                       });
//                     }
//
//                     showComment();
//
//                   //   $("#button").click(function(){
//
//
//                         //  let name=$("#name").val();
//                         //  let message=$("#message").val();
//
//                           $.ajax({
//                               type:"post",
//                               url:"process2.php",
//                               data:"svgcode="+z+"&action=addcomment",
//                               success:function(data){
//                                 showComment();
//
//                               }
//
//                           });
//
//                   // });
//
//                });
// 			 saveJson();
// 			alert("Successfuly Saved");
// 		}
//
//
//
//
//
// 		//save as JSON
// 	function saveJson(){
// 	let json=JSON.stringify(canvas);
// 	 json.background='rgba(0,0,0,0)';
// let n = json.replace('"background":""','"background":"rgba(0,0,0,0)"');
// 		console.log(n);
//
//
// 		}
