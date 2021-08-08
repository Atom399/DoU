// // import 'package:flutter/material.dart';
// // import 'package:flutter/rendering.dart';
// // import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //           primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white70),
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: <Widget>[
// //               Text(
// //                 "Welcome",
// //                 style: TextStyle(
// //                     color: Colors.black,
// //                     fontSize: 23.0,
// //                     fontWeight: FontWeight.bold),
// //               ),
// //               Text(
// //                 "Log in",
// //                 style: TextStyle(
// //                     color: Colors.black,
// //                     fontSize: 20.0,
// //                     fontWeight: FontWeight.w900),
// //               ),
// //               //Text(
// //               //"MyApp will be sending a SMS to verify your number",
// //               //style: TextStyle(
// //               //  color: Colors.yellow,
// //               //fontSize: 13.0,
// //               //fontWeight: FontWeight.normal),
// //               //),
// //               SizedBox(
// //                 height: 40.0,
// //               ),
// //               Text(
// //                 "Number",
// //                 style: TextStyle(
// //                     color: Colors.black,
// //                     fontSize: 15,
// //                     fontWeight: FontWeight.normal),
// //               ),
// //               SizedBox(
// //                 height: 15.0,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     color: Colors.black12,
// //                     //color: Color(0XFFEFF3F6),
// //                     borderRadius: BorderRadius.circular(100.0),
// //                     boxShadow: [
// //                       BoxShadow(
// //                           //color: Color.fromRGBO(0, 0, 0, 0.1),
// //                           color: Colors.black38,
// //                           offset: Offset(-2, 1),
// //                           blurRadius: 5.0,
// //                           spreadRadius: 1.0),
// //                       BoxShadow(
// //                           //color: Color.fromRGBO(255, 255, 255, 0.9),
// //                           color: Colors.white,
// //                           offset: Offset(1, 7),
// //                           blurRadius: 8.0,
// //                           spreadRadius: -2.0)
// //                     ]),
// //                 child: TextField(
// //                   //textAlign: TextAlign.left,
// //                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// //                   decoration: InputDecoration(
// //                       border: InputBorder.none,
// //                       contentPadding: EdgeInsets.all(10.0)),
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 28.0,
// //               ),
// //               Text("Password",
// //                   style: TextStyle(
// //                       color: Colors.black,
// //                       fontSize: 15,
// //                       fontWeight: FontWeight.normal)),
// //               SizedBox(
// //                 height: 15.0,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     color: Colors.black12,
// //                     //color: Color(0XFFEFF3F6),
// //                     borderRadius: BorderRadius.circular(100.0),
// //                     boxShadow: [
// //                       BoxShadow(
// //                           //color: Color.fromRGBO(0, 0, 0, 0.1),
// //                           color: Colors.black38,
// //                           offset: Offset(-2, 1),
// //                           blurRadius: 5.0,
// //                           spreadRadius: 1.0),
// //                       BoxShadow(
// //                           //color: Color.fromRGBO(255, 255, 255, 0.9),
// //                           color: Colors.white,
// //                           offset: Offset(1, 7),
// //                           blurRadius: 8.0,
// //                           spreadRadius: -2.0)
// //                     ]),
// //                 child: TextField(
// //                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// //                   decoration: InputDecoration(
// //                       border: InputBorder.none,
// //                       hintText: "********",
// //                       contentPadding: EdgeInsets.all(10)),
// //                 ),
// //               ),

// //               SizedBox(
// //                 height: 55.0,
// //               ),
// //               NeumorphicButton(
// //                 onPressed: () {},
// //                 style: NeumorphicStyle(
// //                     border: NeumorphicBorder(
// //                       isEnabled: true,
// //                       color: Colors.cyanAccent,
// //                       width: 0.6,
// //                     ),
// //                     shape: NeumorphicShape.convex,
// //                     boxShape:
// //                         NeumorphicBoxShape.roundRect(BorderRadius.circular(60)),
// //                     depth: 6,
// //                     intensity: 1,
// //                     surfaceIntensity: -0.2,
// //                     lightSource: LightSource.top,
// //                     color: Colors.grey),
// //                 child: Container(
// //                   padding: EdgeInsets.all(5.0),
// //                   width: 120,
// //                   height: 30,
// //                   child: Center(
// //                       child: Text(
// //                     "Log in",
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontSize: 16.0,
// //                         fontWeight: FontWeight.bold),
// //                   )),
// //                 ),
// //               )
// //             ],
// //           )),
// //     );
// //   }
// // }

// import 'package:doyou/Pages/Sigin_Login/new_password.dart';
// import 'package:doyou/Pages/Sigin_Login/otp.dart';
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

// class Fgpassword extends StatefulWidget {
//   @override
//   _FgpasswordState createState() => _FgpasswordState();
// }

// class _FgpasswordState extends State<Fgpassword> {
//   String password = '';
//   bool isPasswordVisible = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade900,
//       appBar: AppBar(
//         //backgroundColor: Color(0xFFB2B3B1),
//         backgroundColor: Colors.grey.shade900,
//         //backgroundColor: Color(0xFFB3B1B1),
//         leading: NeumorphicButton(
//           margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
//           padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
//           // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
//           // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
//           // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
//           // padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
//           duration: Duration(milliseconds: 260),
//           curve: Curves.easeIn,
//           onPressed: () {
//             Navigator.push(context, BouncyPageRouteOut(widget: SigninPage()));
//           },
//           style: NeumorphicStyle(
//             color: Colors.black,
//             // border: NeumorphicBorder(
//             //   isEnabled: true,
//             //   color: Colors.red,
//             //   width: 0.1,
//             // ),
//             shape: NeumorphicShape.convex,
//             boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
//             depth: 9,
//             intensity: 1,
//             surfaceIntensity: -0.2,
//             //shadowDarkColorEmboss: Colors.amber,
//             //shadowLightColor: Colors.black45,
//             //oppositeShadowLightSource: false,
//             shadowDarkColor: Colors.black38,
//             shadowLightColor: Colors.black87,
//             lightSource: LightSource.top,
//             //oppositeShadowLightSource: is,
//           ),
//           child: Icon(
//             Icons.arrow_back_sharp,
//             color: Colors.red,
//             size: 29,
//           ),
//           // Icon(Icons.menu),
//           // iconSize: 30.0,
//           // color: Colors.white,
//           // onPressed: () {},
//         ),
//         elevation: 0.0,
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 "Please provide your",
//                 style: TextStyle(
//                     color: Colors.yellow.shade100,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "registered number",
//                 style: TextStyle(
//                     color: Colors.yellow.shade100,
//                     fontSize: 19.0,
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
//                 height: 55.0,
//               ),
//               Text(
//                 "Number",
//                 style: TextStyle(
//                     color: Colors.yellow.shade100,
//                     fontSize: 15,
//                     fontWeight: FontWeight.normal),
//               ),
//               SizedBox(
//                 height: 15.0,
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
//                   keyboardType: TextInputType.number,
//                   //textAlign: TextAlign.left,
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                   decoration: InputDecoration(
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.all(10.0)),
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               // Text("Password",
//               //     style: TextStyle(
//               //         color: Colors.yellow.shade100,
//               //         fontSize: 15,
//               //         fontWeight: FontWeight.normal)),
//               // SizedBox(
//               //   height: 15.0,
//               // ),
//               // Container(
//               //   decoration: BoxDecoration(
//               //       color: Colors.black38,
//               //       //color: Color(0XFFEFF3F6),
//               //       borderRadius: BorderRadius.circular(100.0),
//               //       boxShadow: [
//               //         BoxShadow(
//               //             //color: Color.fromRGBO(0, 0, 0, 0.1),
//               //             color: Colors.black,
//               //             offset: Offset(-2, 1),
//               //             blurRadius: 5.0,
//               //             spreadRadius: 1.0),
//               //         BoxShadow(
//               //             //color: Color.fromRGBO(255, 255, 255, 0.9),
//               //             color: Colors.grey.shade500,
//               //             offset: Offset(2, 4),
//               //             blurRadius: 8.0,
//               //             spreadRadius: -2.0)
//               //       ]),
//               //   child: TextField(
//               //     style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//               //     decoration: InputDecoration(
//               //         border: InputBorder.none,
//               //         hintText: '******',
//               //         hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
//               //         suffixIcon: IconButton(
//               //           icon: isPasswordVisible
//               //               ? Icon(
//               //                   Icons.visibility_off,
//               //                   color: Colors.black38,
//               //                 )
//               //               : Icon(
//               //                   Icons.visibility,
//               //                   color: Colors.blue,
//               //                 ),
//               //           onPressed: () => setState(
//               //               () => isPasswordVisible = !isPasswordVisible),
//               //         ),
//               //         contentPadding: EdgeInsets.all(10)),
//               //     obscureText: isPasswordVisible,
//               //   ),
//               // ),

//               SizedBox(
//                 height: 55.0,
//               ),

//               // Container(
//               //     child: RichText(
//               //   text: TextSpan(
//               //       text: "Forgot ",
//               //       style:
//               //           TextStyle(fontSize: 11, color: Colors.yellow.shade100),
//               //       children: [
//               //         TextSpan(
//               //             text: "Password? ",
//               //             style: TextStyle(fontSize: 12, color: Colors.blue),
//               //             recognizer: TapGestureRecognizer()
//               //               ..onTap = () {
//               //                 //return Navigator.pushNamed(context, '/Log in');
//               //                 Navigator.of(context).push(MaterialPageRoute(
//               //                     builder: (BuildContext context) =>
//               //                         Fgpassword()));
//               //               })
//               //       ]),
//               // )),

//               NeumorphicButton(
//                 curve: Curves.easeIn,
//                 duration: Duration(milliseconds: 260),
//                 onPressed: () {
//                   Navigator.push(context, BouncyPageRouteOut(widget: Otp()));
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
