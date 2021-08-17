// import 'dart:async';

// import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// import 'package:doyou/Pages/Intro/login_screen.dart';
// import 'package:doyou/Pages/Sigin_Login/forgot_password.dart';
// import 'package:doyou/Pages/Sigin_Login/login.dart';
// import 'package:doyou/Pages/Sigin_Login/new_password.dart';
// import 'package:doyou/Pages/Sigin_Login/sigin.dart';
// import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// class Otp2 extends StatefulWidget {
//   final String ? phoneNumber;

//  // String ? pincode;
//   //Otp2(this.phone);
//   //const Otp2({Key? key, required this.phoneNumber, }) : super(key: key);
//     const Otp2({Key? key, this.phoneNumber}) : super(key: key);

//   @override
//   _Otp2State createState() => _Otp2State();

// }

// class _Otp2State extends State<Otp2> {
// String? get phoneNumber => widget.phoneNumber;
//  TextEditingController pinCodeController = TextEditingController();
//  //TextEditingController _pinCodeController = TextEditingController();

//   //String get _phoneNumber => Widget.phoneNumber;
//   // int start = 30;
//   late String verId;
//   late String phone;
//  // bool codeSent = false;
// String ? pincode;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.grey.shade900,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 300),
//                 child: NeumorphicButton(
//                   margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
//                   padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
//                   // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
//                   // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
//                   // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
//                   // padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
//                   duration: Duration(milliseconds: 260),
//                   curve: Curves.easeIn,
//                   onPressed: () {
//                     Navigator.push(
//                         context, BouncyPageRouteOut(widget: SigninPage(uid: '',)));
//                   },
//                   style: NeumorphicStyle(
//                     color: Colors.black,
//                     // border: NeumorphicBorder(
//                     //   isEnabled: true,
//                     //   color: Colors.red,
//                     //   width: 0.1,
//                     // ),
//                     shape: NeumorphicShape.convex,
//                     boxShape:
//                         NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
//                     depth: 9,
//                     intensity: 1,
//                     surfaceIntensity: -0.2,
//                     //shadowDarkColorEmboss: Colors.amber,
//                     //shadowLightColor: Colors.black45,
//                     //oppositeShadowLightSource: false,
//                     shadowDarkColor: Colors.black38,
//                     shadowLightColor: Colors.black87,
//                     lightSource: LightSource.top,
//                     //oppositeShadowLightSource: is,
//                   ),
//                   child: Icon(
//                     Icons.arrow_back_sharp,
//                     color: Colors.red,
//                     size: 29,
//                   ),
//                   // Icon(Icons.menu),
//                   // iconSize: 30.0,
//                   // color: Colors.white,
//                   // onPressed: () {},
//                 ),
//               ),
//               SizedBox(
//                 height: 13,
//               ),
//               Container(
//                 width: 180,
//                 height: 180,
//                 // decoration: BoxDecoration(
//                 //   color: Colors.black,
//                 //   shape: BoxShape.circle,
//                 // ),
//                 decoration: BoxDecoration(
//                     color: Colors.black87,
//                     //color: Color(0XFFEFF3F6),
//                     borderRadius: BorderRadius.circular(35.0),
//                     boxShadow: [
//                       BoxShadow(
//                           //color: Color.fromRGBO(0, 0, 0, 0.1),
//                           color: Colors.black,
//                           offset: Offset(1, 2),
//                           blurRadius: 5.0,
//                           spreadRadius: 1.0),
//                       BoxShadow(
//                           //color: Color.fromRGBO(255, 255, 255, 0.9),
//                           color: Colors.grey.shade500,
//                           offset: Offset(1, 1),
//                           blurRadius: 1.0,
//                           spreadRadius: -3.0)
//                     ]),
//                 child: Image.asset(
//                   'assets/images/illustration-2.png',
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Verification',
//                 style: TextStyle(
//                   color: Colors.yellow.shade100,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 7,
//               ),
//               Text(
//                 "Enter the OTP sent to your given number",
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.yellow.shade100,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 padding: EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade900,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                    children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(""),
//                 Text(
//                   "Verify your phone number",
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.green,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Icon(Icons.more_vert)
//               ],
//             ),
//                //    children: [
//                 //    Row(
//                   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //     children: [
//                   //       _textFieldOTP(first: true, last: false),
//                   //       _textFieldOTP(first: false, last: false),
//                   //       _textFieldOTP(first: false, last: false),
//                   //       _textFieldOTP(first: false, last: false),
//                   //       _textFieldOTP(first: false, last: false),
//                   //       _textFieldOTP(first: false, last: true),
//                     // ],
//                   //   ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: Column(children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 50),
//                           child: NeumorphicButton(
//                             margin: EdgeInsets.only(right: 20, left: 15),
//                             padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
//                             curve: Curves.easeIn,
//                             duration: Duration(milliseconds: 260),
//                             onPressed:  _submitSmsCode,
//                             //
//                             //   Navigator.pushReplacement(
//                             //       context,
//                             //       BouncyPageRouteOut(
//                             //           widget: HomeScreen(
//                             //         uid: '',
//                             //       )));
//                             // },
//                             style: NeumorphicStyle(
//                               color: Colors.black,
//                               // border: NeumorphicBorder(
//                               //   isEnabled: true,
//                               //   color: Colors.red,
//                               //   width: 0.1,
//                               // ),
//                               shape: NeumorphicShape.convex,
//                               boxShape: NeumorphicBoxShape.roundRect(
//                                   BorderRadius.circular(15)),
//                               depth: 9,
//                               intensity: 1,
//                               surfaceIntensity: -0.2,
//                               //shadowDarkColorEmboss: Colors.amber,
//                               //shadowLightColor: Colors.black45,
//                               //oppositeShadowLightSource: false,
//                               shadowDarkColor: Colors.black12,
//                               shadowLightColor: Colors.black87,
//                               lightSource: LightSource.top,
//                               //oppositeShadowLightSource: is,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsets.all(14.0),
//                               child: Text(
//                                 'Verify',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.red,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ]),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//               Container(
//                 child: RichText(
//                   text: TextSpan(
//                       text: "Didn't receive any code? ",
//                       style: TextStyle(
//                         fontSize: 11,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.yellow.shade100,
//                       ),
//                       children: [
//                         TextSpan(
//                             text: " Resend new code ",
//                             style: TextStyle(fontSize: 12, color: Colors.blue),
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 //startTimer();
//                               }),
//                         // TextSpan(
//                         //   text: " 00:$start ",
//                         //   style: TextStyle(fontSize: 12, color: Colors.red),
//                         // ),
//                       ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // void startTimer() {
//   //   const onsec = Duration(seconds: 1);
//   //   Timer timer = Timer.periodic(onsec, (timer) {
//   //     if (start == 0) {
//   //       setState(() {
//   //         timer.cancel();
//   //       });
//   //     } else {
//   //       setState(() {
//   //         start--;
//   //       });
//   //     }
//   //   });
//   // }

//   Widget _textFieldOTP({bool? first, last}) {
//     return Container(
//       height: 60,
//       width: 55,

//       child: AspectRatio(

//         aspectRatio: 1.0,

//         child: TextField(
//            controller:pinCodeController ,
//           autofocus: true,
//           onChanged:
//            (pincode) {
//              print(pincode);

//             if (pincode.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (pincode.length == 0 && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },

//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.yellow.shade100),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           // onSubmitted: (pin) {
//           //   verifyPin(pin);
//           // },
//           decoration: InputDecoration(

//             counter: Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.black),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.red),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }

//   void _submitSmsCode() {
//     if (pinCodeController.text.isNotEmpty) {
//       BlocProvider.of<PhoneAuthCubit>(context)
//           .submitSmsCode(smsCode: pinCodeController.text);
//     }
//   }
// }

// Future<void> verifyPhone() async {
//   await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: phone,
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await FirebaseAuth.instance.signInWithCredential(credential);
//         final snackBar = SnackBar(content: Text("Verified Successfully"));
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         final snackBar = SnackBar(content: Text("${e.message}"));
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       },
//       codeSent: (String verificationId, int? resendToken) {
//         setState(() {
//           codeSent = true;
//           verId = verificationId;
//         });
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {
//         setState(() {
//           verId = verificationId;
//         });
//       },
//       timeout: Duration(seconds: 60));
// }

//   Future<void> verifyPin(String pin) async {
//     PhoneAuthCredential credential =
//         PhoneAuthProvider.credential(verificationId: verId, smsCode: pin);

//     try {
//       await FirebaseAuth.instance.signInWithCredential(credential);
//       final snackBar = SnackBar(content: Text("Login Success"));
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       Navigator.pushReplacement(
//           context, BouncyPageRouteOut(widget: HomeScreen()));
//     } on FirebaseAuthException catch (e) {
//       final snackBar = SnackBar(content: Text("${e.message}"));
//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     }
//   }
// }
// import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// import 'package:doyou/Pages/Intro/login_screen.dart';
// import 'package:doyou/Pages/Sigin_Login/forgot_password.dart';
// import 'package:doyou/Pages/Sigin_Login/login.dart';
// import 'package:doyou/Pages/Sigin_Login/new_password.dart';
// import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// class Otp extends StatefulWidget {
//   const Otp({Key? key}) : super(key: key);

//   @override
//   _OtpState createState() => _OtpState();
// }

// class _OtpState extends State<Otp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.grey.shade900,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 300),
//                 child: NeumorphicButton(
//                   margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
//                   padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
//                   // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
//                   // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
//                   // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
//                   // padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
//                   duration: Duration(milliseconds: 260),
//                   curve: Curves.easeIn,
//                   onPressed: () {
//                     Navigator.push(
//                         context, BouncyPageRouteOut(widget: Loginpage()));
//                   },
//                   style: NeumorphicStyle(
//                     color: Colors.black,
//                     // border: NeumorphicBorder(
//                     //   isEnabled: true,
//                     //   color: Colors.red,
//                     //   width: 0.1,
//                     // ),
//                     shape: NeumorphicShape.convex,
//                     boxShape:
//                         NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
//                     depth: 9,
//                     intensity: 1,
//                     surfaceIntensity: -0.2,
//                     //shadowDarkColorEmboss: Colors.amber,
//                     //shadowLightColor: Colors.black45,
//                     //oppositeShadowLightSource: false,
//                     shadowDarkColor: Colors.black38,
//                     shadowLightColor: Colors.black87,
//                     lightSource: LightSource.top,
//                     //oppositeShadowLightSource: is,
//                   ),
//                   child: Icon(
//                     Icons.arrow_back_sharp,
//                     color: Colors.red,
//                     size: 29,
//                   ),
//                   // Icon(Icons.menu),
//                   // iconSize: 30.0,
//                   // color: Colors.white,
//                   // onPressed: () {},
//                 ),
//               ),
//               SizedBox(
//                 height: 13,
//               ),
//               Container(
//                 width: 180,
//                 height: 180,
//                 // decoration: BoxDecoration(
//                 //   color: Colors.black,
//                 //   shape: BoxShape.circle,
//                 // ),
//                 decoration: BoxDecoration(
//                     color: Colors.black87,
//                     //color: Color(0XFFEFF3F6),
//                     borderRadius: BorderRadius.circular(35.0),
//                     boxShadow: [
//                       BoxShadow(
//                           //color: Color.fromRGBO(0, 0, 0, 0.1),
//                           color: Colors.black,
//                           offset: Offset(1, 2),
//                           blurRadius: 5.0,
//                           spreadRadius: 1.0),
//                       BoxShadow(
//                           //color: Color.fromRGBO(255, 255, 255, 0.9),
//                           color: Colors.grey.shade500,
//                           offset: Offset(1, 1),
//                           blurRadius: 1.0,
//                           spreadRadius: -3.0)
//                     ]),
//                 child: Image.asset(
//                   'assets/images/illustration-2.png',
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Verification',
//                 style: TextStyle(
//                   color: Colors.yellow.shade100,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 7,
//               ),
//               Text(
//                 "Enter the OTP sent to your given number",
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.yellow.shade100,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 padding: EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                   color: Colors.grey.shade900,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                          _pinCodeWidget(first: true, last: false),
//                          _pinCodeWidget(first: false, last: false),
//                          _pinCodeWidget(first: false, last: false),
//                          _pinCodeWidget(first: false, last: false),
//                          _pinCodeWidget(first: false, last: false),
//                          _pinCodeWidget(first: false, last: true),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: Column(children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 50),
//                           child: NeumorphicButton(
//                             margin: EdgeInsets.only(right: 20, left: 15),
//                             padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
//                             curve: Curves.easeIn,

//                             duration: Duration(milliseconds: 260),
//                             onPressed :_submitSmsCode,
//                               // Navigator.pushReplacement(context,
//                               //     BouncyPageRouteOut(widget: HomeScreen(uid: '',)));

//                             style: NeumorphicStyle(
//                               color: Colors.black,
//                               // border: NeumorphicBorder(
//                               //   isEnabled: true,
//                               //   color: Colors.red,
//                               //   width: 0.1,
//                               // ),
//                               shape: NeumorphicShape.convex,
//                               boxShape: NeumorphicBoxShape.roundRect(
//                                   BorderRadius.circular(15)),
//                               depth: 9,
//                               intensity: 1,
//                               surfaceIntensity: -0.2,
//                               //shadowDarkColorEmboss: Colors.amber,
//                               //shadowLightColor: Colors.black45,
//                               //oppositeShadowLightSource: false,
//                               shadowDarkColor: Colors.black12,
//                               shadowLightColor: Colors.black87,
//                               lightSource: LightSource.top,
//                               //oppositeShadowLightSource: is,
//                             ),
//                             child: Padding(
//                               padding: EdgeInsets.all(14.0),
//                               child: Text(
//                                 'Verify',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.red,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ]),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//               Container(
//                 child: RichText(
//                   text: TextSpan(
//                       text: "Didn't receive any code? ",
//                       style: TextStyle(
//                         fontSize: 11,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.yellow.shade100,
//                       ),
//                       children: [
//                         TextSpan(
//                             text: " Resend new code ",
//                             style: TextStyle(fontSize: 12, color: Colors.blue),
//                             recognizer: TapGestureRecognizer()

//                                 //startTimer();
//                             //  }
//                               ),
//                         // TextSpan(
//                         //   text: " 00:$start ",
//                         //   style: TextStyle(fontSize: 12, color: Colors.red),
//                         // ),
//                       ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // void startTimer() {
//   //   const onsec = Duration(seconds: 1);
//   //   Timer timer = Timer.periodic(onsec, (timer) {
//   //     if (start == 0) {
//   //       setState(() {
//   //         timer.cancel();
//   //       });
//   //     } else {
//   //       setState(() {
//   //         start--;
//   //       });
//   //     }
//   //   });
//   // }

//   Widget _pinCodeWidget({bool? first, last}) {

//     return Container(
//       height: 60,
//       width: 55,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           controller: ,

//           autofocus: true,

//           onChanged: (pincode) {
//               print(pincode);
//             },
//             // if (value.length == 1 && last == false) {
//             //   FocusScope.of(context).nextFocus();
//             // }
//             // if (value.length == 0 && first == false) {
//             //   FocusScope.of(context).previousFocus();
//             // }

//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.yellow.shade100),
//           keyboardType: TextInputType.number,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.black),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 2, color: Colors.red),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );

//   }
//   void _submitSmsCode() {
//     if (_pinCodeController.text.isNotEmpty) {
//       BlocProvider.of<PhoneAuthCubit>(context)
//           .submitSmsCode(smsCode: _pinCodeController.text);
//     }
//   }

// }

// // }
// import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:pin_code_fields/pin_code_fields.dart';

// class PhoneVerificationPage extends StatefulWidget {
//   final String? phoneNumber;

//   const PhoneVerificationPage({Key? key, this.phoneNumber}) : super(key: key);

//   @override
//   _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
// }

// class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
//   String? get _phoneNumber => widget.phoneNumber;
//   TextEditingController _pinCodeController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(""),
//                 Text(
//                   "Verify your phone number",
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.green,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 Icon(Icons.more_vert)
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               "WhatsApp Clone will send and SMS message (carrier charges may apply) to verify your phone number. Enter your country code and phone number:",
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//             ),
//             _pinCodeWidget(),
//             Expanded(
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: MaterialButton(
//                   color: Colors.green,
//                   onPressed:
//                     _submitSmsCode,
//                   child: Text(
//                     "Next",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _pinCodeWidget() {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 50),
//       child: Column(
//         children: <Widget>[
//           PinCodeTextField(
//             controller: _pinCodeController,
//             length: 6,
//             backgroundColor: Colors.transparent,
//             obscureText: true,
//             autoDisposeControllers: false,
//             onChanged: (pinCode) {
//               print(pinCode);
//             }, appContext: context,
//           ),
//           Text("Enter your 6 digit code")
//         ],
//       ),
//     );
//   }

//   void _submitSmsCode() {
//     if (_pinCodeController.text.isNotEmpty) {
//       BlocProvider.of<PhoneAuthCubit>(context)
//           .submitSmsCode(smsCode: _pinCodeController.text);
//     }
//       //  else   if (_pinCodeController.text.isNotEmpty)
//       // {
//       //  Navigator.pushReplacement(context,
//       //                            BouncyPageRouteOut(widget: HomeScreen(uid: '',)));
//       //
//   }
// }

//3rd

import 'package:doyou/Pages/Chat/screens/home_screen.dart';
import 'package:doyou/Pages/Sigin_Login/sigin.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl_phone_field/phone_number.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerificationPage extends StatefulWidget {
  final String? phoneNumber;

  const PhoneVerificationPage({Key? key, this.phoneNumber}) : super(key: key);

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  String? get _phoneNumber => widget.phoneNumber;
  TextEditingController _pinCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 35),
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Column(
              children: [
                SizedBox(height: 60),
                Container(
                  width: 180,
                  height: 180,
                  // decoration: BoxDecoration(
                  //   color: Colors.black,
                  //   shape: BoxShape.circle,
                  // ),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      //color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        BoxShadow(
                            //color: Color.fromRGBO(0, 0, 0, 0.1),
                            color: Colors.black,
                            offset: Offset(1, 2),
                            blurRadius: 5.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            //color: Color.fromRGBO(255, 255, 255, 0.9),
                            color: Colors.grey.shade500,
                            offset: Offset(1, 1),
                            blurRadius: 1.0,
                            spreadRadius: -3.0)
                      ]),
                  child: Image.asset(
                    'assets/images/illustration-2.png',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Verification',
                  style: TextStyle(
                    color: Colors.yellow.shade100,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Enter the OTP sent to your given number",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow.shade100,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                _pinCodeWidget(),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 200,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: NeumorphicButton(
                        margin: EdgeInsets.only(right: 20, left: 15),
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 260),
                        onPressed: _submitSmsCode,
                        //
                        //   Navigator.pushReplacement(
                        //       context,
                        //       BouncyPageRouteOut(
                        //           widget: HomeScreen(
                        //         uid: '',
                        //       )));
                        // },
                        style: NeumorphicStyle(
                          color: Colors.black,
                          // border: NeumorphicBorder(
                          //   isEnabled: true,
                          //   color: Colors.red,
                          //   width: 0.1,
                          // ),
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(15)),
                          depth: 9,
                          intensity: 1,
                          surfaceIntensity: -0.2,
                          //shadowDarkColorEmboss: Colors.amber,
                          //shadowLightColor: Colors.black45,
                          //oppositeShadowLightSource: false,
                          shadowDarkColor: Colors.black12,
                          shadowLightColor: Colors.black87,
                          lightSource: LightSource.top,
                          //oppositeShadowLightSource: is,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Verify',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ));
  }

  Widget _pinCodeWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          PinCodeTextField(
            appContext: context,

            cursorColor: Colors.red,
            // autovalidateMode: AutovalidateMode.always,
            controller: _pinCodeController,
            length: 6,
            backgroundColor: Colors.transparent,
            obscureText: true,
            autoDisposeControllers: false,
            onChanged: (pinCode) {
              print(pinCode);
            },
          ),
    
        ],
      ),
    );
  }

  void _submitSmsCode() {
    if (_pinCodeController.text.isNotEmpty) {
      BlocProvider.of<PhoneAuthCubit>(context)
          .submitSmsCode(smsCode: _pinCodeController.text);
    }
    //  else   if (_pinCodeController.text.isNotEmpty)
    // {
    //  Navigator.pushReplacement(context,
    //                            BouncyPageRouteOut(widget: HomeScreen(uid: '',)));
    //
  }
}
