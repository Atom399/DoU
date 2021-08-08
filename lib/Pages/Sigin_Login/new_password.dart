// import 'package:doyou/Pages/Sigin_Login/forgot_password.dart';
// import 'package:doyou/Pages/Sigin_Login/sigin.dart';
// import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// // ignore: unused_import
// import 'package:doyou/Pages/Sigin_Login/dialogues/policy_dialogue.dart';
// // ignore: unused_import
// import 'package:animations/animations.dart';

// class Newpassword extends StatefulWidget {
//   @override
//   _NewpasswordState createState() => _NewpasswordState();
// }

// class _NewpasswordState extends State<Newpassword> {
//   bool? value = false;
//   String password = '';
//   bool isPasswordVisible1 = true;
//   bool isPasswordVisible2 = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade900,
//       // appBar: AppBar(
//       //   //backgroundColor: Color(0xFFB2B3B1),
//       //   backgroundColor: Colors.grey.shade900,
//       //   //backgroundColor: Color(0xFFB3B1B1),
//       //   leading: NeumorphicButton(
//       //     margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
//       //     padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
//       //     // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
//       //     // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
//       //     // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
//       //     // padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
//       //     duration: Duration(milliseconds: 260),
//       //     curve: Curves.easeIn,
//       //     onPressed: () {
//       //       Navigator.push(context, BouncyPageRouteOut(widget: SigninPage()));
//       //     },
//       //     style: NeumorphicStyle(
//       //       color: Colors.black,
//       //       // border: NeumorphicBorder(
//       //       //   isEnabled: true,
//       //       //   color: Colors.red,
//       //       //   width: 0.1,
//       //       // ),
//       //       shape: NeumorphicShape.convex,
//       //       boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
//       //       depth: 9,
//       //       intensity: 1,
//       //       surfaceIntensity: -0.2,
//       //       //shadowDarkColorEmboss: Colors.amber,
//       //       //shadowLightColor: Colors.black45,
//       //       //oppositeShadowLightSource: false,
//       //       shadowDarkColor: Colors.black38,
//       //       shadowLightColor: Colors.black87,
//       //       lightSource: LightSource.top,
//       //       //oppositeShadowLightSource: is,
//       //     ),
//       //     child: Icon(
//       //       Icons.arrow_back_sharp,
//       //       color: Colors.red,
//       //       size: 29,
//       //     ),
//       //     // Icon(Icons.menu),
//       //     // iconSize: 30.0,
//       //     // color: Colors.white,
//       //     // onPressed: () {},
//       //   ),
//       //   elevation: 0.0,
//       // ),
//       body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 "Create a ",
//                 style: TextStyle(
//                     color: Colors.yellow.shade100,
//                     fontSize: 23.0,
//                     fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "new passwordl",
//                 style: TextStyle(
//                     color: Colors.yellow.shade100,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.w900),
//               ),
//               //Text(
//               //"MyApp will be sending a SMS to verify your number",
//               //style: TextStyle(
//               //  color: Colors.yellow,
//               //fontSize: 13.0,
//               //fontWeight: FontWeight.normal),
//               //),
//               SizedBox(
//                 height: 40.0,
//               ),
//               Text("Create a password",
//                   style: TextStyle(
//                       color: Colors.yellow.shade100,
//                       fontSize: 15,
//                       fontWeight: FontWeight.normal)),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.black38,
//                     //color: Color(0XFFEFF3F6),
//                     borderRadius: BorderRadius.circular(100.0),
//                     boxShadow: [
//                       BoxShadow(
//                           //color: Color.fromRGBO(0, 0, 0, 0.1),
//                           color: Colors.black,
//                           offset: Offset(-2, 1),
//                           blurRadius: 5.0,
//                           spreadRadius: 1.0),
//                       BoxShadow(
//                           //color: Color.fromRGBO(255, 255, 255, 0.9),
//                           color: Colors.grey.shade500,
//                           offset: Offset(2, 4),
//                           blurRadius: 8.0,
//                           spreadRadius: -2.0)
//                     ]),
//                 child: TextField(
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: '******',
//                       hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
//                       suffixIcon: IconButton(
//                         icon: isPasswordVisible1
//                             ? Icon(
//                                 Icons.visibility_off,
//                                 color: Colors.black38,
//                               )
//                             : Icon(
//                                 Icons.visibility,
//                                 color: Colors.blue,
//                               ),
//                         onPressed: () => setState(
//                             () => isPasswordVisible1 = !isPasswordVisible1),
//                       ),
//                       contentPadding: EdgeInsets.all(10)),
//                   obscureText: isPasswordVisible1,
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Text("Confirm password",
//                   style: TextStyle(
//                       color: Colors.yellow.shade100,
//                       fontSize: 15,
//                       fontWeight: FontWeight.normal)),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     color: Colors.black38,
//                     //color: Color(0XFFEFF3F6),
//                     borderRadius: BorderRadius.circular(100.0),
//                     boxShadow: [
//                       BoxShadow(
//                           //color: Color.fromRGBO(0, 0, 0, 0.1),
//                           color: Colors.black,
//                           offset: Offset(-2, 1),
//                           blurRadius: 5.0,
//                           spreadRadius: 1.0),
//                       BoxShadow(
//                           //color: Color.fromRGBO(255, 255, 255, 0.9),
//                           color: Colors.grey.shade500,
//                           offset: Offset(2, 4),
//                           blurRadius: 8.0,
//                           spreadRadius: -2.0)
//                     ]),
//                 child: TextField(
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: '******',
//                       hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
//                       suffixIcon: IconButton(
//                         icon: isPasswordVisible2
//                             ? Icon(
//                                 Icons.visibility_off,
//                                 color: Colors.black38,
//                               )
//                             : Icon(
//                                 Icons.visibility,
//                                 color: Colors.blue,
//                               ),
//                         onPressed: () => setState(
//                             () => isPasswordVisible2 = !isPasswordVisible2),
//                       ),
//                       contentPadding: EdgeInsets.all(10)),
//                   obscureText: isPasswordVisible2,
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               SizedBox(height: 55),
//               NeumorphicButton(
//                 curve: Curves.easeIn,
//                 duration: Duration(milliseconds: 260),
//                 onPressed: () {
//                   Navigator.push(
//                       context, BouncyPageRouteOut(widget: HomeScreen()));
//                 },
//                 style: NeumorphicStyle(
//                   color: Colors.black,
//                   // border: NeumorphicBorder(
//                   //   isEnabled: true,
//                   //   color: Colors.red,
//                   //   width: 0.1,
//                   // ),
//                   shape: NeumorphicShape.convex,
//                   boxShape:
//                       NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
//                   depth: 9,
//                   intensity: 1,
//                   surfaceIntensity: -0.2,
//                   //shadowDarkColorEmboss: Colors.amber,
//                   //shadowLightColor: Colors.black45,
//                   //oppositeShadowLightSource: false,
//                   shadowDarkColor: Colors.black12,
//                   shadowLightColor: Colors.black87,
//                   lightSource: LightSource.top,
//                   //oppositeShadowLightSource: is,
//                 ),
//                 child: Container(
//                   padding: EdgeInsets.all(5.0),
//                   width: 120,
//                   height: 30,
//                   child: Center(
//                       child: Text(
//                     "Proceed",
//                     style: TextStyle(
//                         color: Colors.red,
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold),
//                   )),
//                 ),
//               )
//             ],
//           )),
//     );
//   }
// }
