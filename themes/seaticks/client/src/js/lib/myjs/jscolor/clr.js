// // JavaScript Document



//function toggleUniform() {
// 	var aObject = canvas.getActiveObject();
// 	if (aObject.type === 'activeSelection') {
// 		aObject.getObjects().forEach(function(obj) {
// 			obj.set('strokeUniform', !obj.strokeUniform);
// 		});
// 	} else {
// 		aObject.set('strokeUniform', !aObject.strokeUniform);
// 	}
// 	canvas.requestRenderAll();
// }









// let color1 = $("#ca");
// if (color1 && color1.length>0){
// color1.click(function () {
//
// 		let obj=canvas.getActiveObject();
// 		let objgroup=canvas.getActiveObjects();
// 	if(obj){
// 			obj.setFill("LemonChiffon");
// 			canvas.renderAll();
// 	       }
// 	if(!obj & !objgroup)
// 	  {canvas.backgroundColor = 'LemonChiffon';
// 	   canvas.renderAll();
// 	  }
// 	  try{
// 	if(objgroup.size()>1){
// 			objgroup.setFill("LemonChiffon");
// 			canvas.renderAll();
// 	       }}catch(err){}
//   });
// }
//
//
// let color2 = $("#cb");
// if (color2 && color2.length>0) {
//     color2.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("LightCoral");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'LightCoral';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("LightCoral");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
//
//     let color3 = $("#cc");
//     if (color3 && color3.length>0) {
//     color3.click(function () {
//
//                 let obj = canvas.getActiveObject();
//                 let objgroup = canvas.getActiveObjects();
//                 if (obj) {
//                     obj.setFill("LavenderBlush");
//                     canvas.renderAll();
//                 }
//                 if (!obj & !objgroup) {
//                     canvas.backgroundColor = 'LavenderBlush';
//                     canvas.renderAll();
//                 }
//                 try {
//                     if (objgroup.size() > 1) {
//                         objgroup.setFill("LavenderBlush");
//                         canvas.renderAll();
//                     }
//                 } catch (err) {
//                 }
//             });
//         }
//
//
//
//                 let color4 = $("#cd");
//                 if (color4 && color4.length>0) {
//                     color4.click(function () {
//
//                         let obj = canvas.getActiveObject();
//                         let objgroup = canvas.getActiveObjects();
//                         if (obj) {
//                             obj.setFill("Snow");
//                             canvas.renderAll();
//                         }
//                         if (!obj & !objgroup) {
//                             canvas.backgroundColor = 'Snow';
//                             canvas.renderAll();
//                         }
//                         try {
//                             if (objgroup.size() > 1) {
//                                 objgroup.setFill("Snow");
//                                 canvas.renderAll();
//                             }
//                         } catch (err) {
//                         }
//                     });
//                 }
//
//
// let color5 = $("#ce");
// if (color5 && color5.length>0) {
//     color5.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("DimGray");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'DimGray';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("DimGray");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//
//     });
// }
//
// let color6 = $("#cf");
// if (color6 && color6.length>0) {
//     color6.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("DarkOrange");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'DarkOrange';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("DarkOrange");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
// let color7 = $("#cg");
// if (color7 && color7.length>0) {
//     color7.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("Coral");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'Coral';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("Coral");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
// let color8 = $("#ch");
// if (color8 && color8.length>0) {
//     color8.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("Chocolate");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'Chocolate';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("Chocolate");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     })
// }
//
//
// let color9 = $("#ci");
// if (color9 && color9.length>0) {
//     color9.click(function () {
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("BlueViolet");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'BlueViolet';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("BlueViolet");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//
//     });
// }
//
//
// let color10 = $("#cj");
// if (color10 && color10.length>0) {
//     color10.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("Black");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'Black';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("Black");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//
//     });
// }
//
// let color11 = $("#ck");
// if (color11 && color11.length>0) {
//     color11.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("FireBrick");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'FireBrick';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("FireBrick");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
// let color12 = $("#cl");
// if (color12 && color12.length>0) {
//     color12.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("White");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'White';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("White");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
// let color13 = $("#cm");
// if (color13 && color13.length>0) {
//     color13.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("IndianRed");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'IndianRed';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("IndianRed");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
// let color14 = $("#cn");
// if (color14 && color14.length>0) {
//     color14.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("Khaki");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'Khaki';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("Khaki");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
// let color15 = $("#co");
// if (color15 && color15.length>0) {
//     color15.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("LightPink");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'LightPink';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("LightPink");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
// let color16 = $("#cp");
// if (color16 && color16.length>0) {
//     color16.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("LightSkyBlue");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'LightSkyBlue';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("LightSkyBlue");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
// let color17 = $("#cq");
// if (color17 && color17.length>0) {
//     color17.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("YellowGreen");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'YellowGreen';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("YellowGreen");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     })
// }
//
//
// let color18 = $("#cr");
// if (color18 && color18.length>0) {
//     color18.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("Peru");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'Peru';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("Peru");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
// let color19 = $("#cs");
// if (color19 && color19.length>0) {
//     color19.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("Tan");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'Tan';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("Tan");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
//
//
//
// let color20 = $("#ct");
// if (color20 && color20.length>0) {
//     color20.click(function () {
//
//         let obj = canvas.getActiveObject();
//         let objgroup = canvas.getActiveObjects();
//         if (obj) {
//             obj.setFill("Sienna");
//             canvas.renderAll();
//         }
//         if (!obj & !objgroup) {
//             canvas.backgroundColor = 'Sienna';
//             canvas.renderAll();
//         }
//         try {
//             if (objgroup.size() > 1) {
//                 objgroup.setFill("Sienna");
//                 canvas.renderAll();
//             }
//         } catch (err) {
//         }
//     });
// }
