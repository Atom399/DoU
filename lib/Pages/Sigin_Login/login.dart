// import 'package:doyou/Pages/Sigin_Login/forgot_password.dart';
// import 'package:doyou/Pages/Sigin_Login/otp.dart';
// import 'package:doyou/Pages/Sigin_Login/sigin.dart';
// import 'package:doyou/Pages/animations/loading/loading.dart';
// import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// // ignore: unused_import
// import 'package:doyou/Pages/Sigin_Login/dialogues/policy_dialogue.dart';
// // ignore: unused_import
// import 'package:animations/animations.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
// import 'package:form_field_validator/form_field_validator.dart';

// class Loginpage extends StatefulWidget {
//   String ?uid;
//   @override
//   _LoginpageState createState() => _LoginpageState();
// }

// class _LoginpageState extends State<Loginpage> {
//   // String password = '';
//   // bool isPasswordVisible = true;
    
//   late String verId;
//   late String phone;
//   bool codeSent = false;
//   bool loading = false;

//   @override
//   Widget build(BuildContext context) {
//     return loading
//         ? Loading()
//         : Scaffold(
//             backgroundColor: Colors.grey.shade900,
//             // appBar: AppBar(
//             //   //backgroundColor: Color(0xFFB2B3B1),
//             //   backgroundColor: Colors.grey.shade900,
//             //   //backgroundColor: Color(0xFFB3B1B1),
//             //   leading: NeumorphicButton(
//             //     margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
//             //     padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
//             //     // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
//             //     // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
//             //     // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
//             //     // padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
//             //     duration: Duration(milliseconds: 260),
//             //     curve: Curves.easeIn,
//             //     onPressed: () {
//             //       Navigator.push(context, BouncyPageRouteOut(widget: SigninPage()));
//             //     },
//             //     style: NeumorphicStyle(
//             //       color: Colors.black,
//             //       // border: NeumorphicBorder(
//             //       //   isEnabled: true,
//             //       //   color: Colors.red,
//             //       //   width: 0.1,
//             //       // ),
//             //       shape: NeumorphicShape.convex,
//             //       boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
//             //       depth: 9,
//             //       intensity: 1,
//             //       surfaceIntensity: -0.2,
//             //       //shadowDarkColorEmboss: Colors.amber,
//             //       //shadowLightColor: Colors.black45,
//             //       //oppositeShadowLightSource: false,
//             //       shadowDarkColor: Colors.black38,
//             //       shadowLightColor: Colors.black87,
//             //       lightSource: LightSource.top,
//             //       //oppositeShadowLightSource: is,
//             //     ),
//             //     child: Icon(
//             //       Icons.arrow_back_sharp,
//             //       color: Colors.red,
//             //       size: 29,
//             //     ),
//             //     // Icon(Icons.menu),
//             //     // iconSize: 30.0,
//             //     // color: Colors.white,
//             //     // onPressed: () {},
//             //   ),
//             //   elevation: 0.0,
//             // ),
//             body: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       "Welcome",
//                       style: TextStyle(
//                           color: Colors.yellow.shade100,
//                           fontSize: 23.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Log in",
//                       style: TextStyle(
//                           color: Colors.yellow.shade100,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.w900),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 180,
//                           height: 180,
//                           alignment: Alignment.center,
//                           // decoration: BoxDecoration(
//                           //   color: Colors.black,
//                           //   shape: BoxShape.circle,
//                           // ),
//                           decoration: BoxDecoration(
//                               color: Colors.black87,
//                               //color: Color(0XFFEFF3F6),
//                               borderRadius: BorderRadius.circular(35.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                     //color: Color.fromRGBO(0, 0, 0, 0.1),
//                                     color: Colors.black,
//                                     offset: Offset(1, 2),
//                                     blurRadius: 5.0,
//                                     spreadRadius: 1.0),
//                                 BoxShadow(
//                                     //color: Color.fromRGBO(255, 255, 255, 0.9),
//                                     color: Colors.grey.shade500,
//                                     offset: Offset(1, 1),
//                                     blurRadius: 1.0,
//                                     spreadRadius: -3.0)
//                               ]),
//                           child: Image.asset(
//                             'assets/images/illustration-3.png',
//                           ),
//                         ),
//                       ],
//                     ),
//                     //Text(
//                     //"MyApp will be sending a SMS to verify your number",
//                     //style: TextStyle(
//                     //  color: Colors.yellow,
//                     //fontSize: 13.0,
//                     //fontWeight: FontWeight.normal),
//                     //),
//                     SizedBox(
//                       height: 40.0,
//                     ),
//                     Text(
//                       "Number",
//                       style: TextStyle(
//                           color: Colors.yellow.shade100,
//                           fontSize: 15,
//                           fontWeight: FontWeight.normal),
//                     ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     // Container(
//                     //   decoration: BoxDecoration(
//                     //       color: Colors.black38,
//                     //       //color: Color(0XFFEFF3F6),
//                     //       borderRadius: BorderRadius.circular(100.0),
//                     //       boxShadow: [
//                     //         BoxShadow(
//                     //             //color: Color.fromRGBO(0, 0, 0, 0.1),
//                     //             color: Colors.black,
//                     //             offset: Offset(-2, 1),
//                     //             blurRadius: 5.0,
//                     //             spreadRadius: 1.0),
//                     //         BoxShadow(
//                     //             //color: Color.fromRGBO(255, 255, 255, 0.9),
//                     //             color: Colors.grey.shade500,
//                     //             offset: Offset(2, 4),
//                     //             blurRadius: 8.0,
//                     //             spreadRadius: -2.0)
//                     //       ]),
//                     //   child: TextField(
//                     //     keyboardType: TextInputType.number,
//                     //     style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                     //     decoration: InputDecoration(
//                     //         prefixText: "+91 ",
//                     //         border: InputBorder.none,
//                     //         contentPadding: EdgeInsets.all(10)),
//                     //   ),
//                     // ),
//                     codeSent
//                         ? OTPTextField(
//                             keyboardType: TextInputType.number,
//                             length: 6,
//                             width: MediaQuery.of(context).size.width,
//                             fieldWidth: 40,
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.yellow.shade100,
//                             ),
//                             textFieldAlignment: MainAxisAlignment.spaceAround,
//                             fieldStyle: FieldStyle.box,
//                             otpFieldStyle: OtpFieldStyle(
//                               backgroundColor: Colors.black,
//                               borderColor: Colors.red,
//                             ),
//                             onCompleted: (pin) {
//                              // verifyPin(pin);
//                             },
//                           )
//                         : IntlPhoneField(
//                             textInputAction: TextInputAction.done,
//                             validator: MultiValidator([
//                               RequiredValidator(
//                                   errorText: 'Please input your phone number')
//                             ]),
//                             //controller: data2,
//                             autoValidate: true,
//                             showDropdownIcon: false,
//                             keyboardType: TextInputType.phone,
//                             countryCodeTextColor: Colors.yellow.shade100,
//                             style: TextStyle(color: Colors.yellow.shade100),
//                             decoration: InputDecoration(
//                                 filled: true,
//                                 enabled: false,
//                                 fillColor: Colors.black54,
//                                 focusColor: Colors.red,
//                                 counterText: '',
//                                 border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(100))),
//                             initialCountryCode: 'IN',
//                             onChanged: (phoneNumber) {
//                               setState(() {
//                                 phone = phoneNumber.completeNumber;
//                               });
//                             },
//                           ),
//                     // SizedBox(
//                     //   height: 28.0,
//                     // ),
//                     // Text("Password",
//                     //     style: TextStyle(
//                     //         color: Colors.yellow.shade100,
//                     //         fontSize: 15,
//                     //         fontWeight: FontWeight.normal)),
//                     // SizedBox(
//                     //   height: 15.0,
//                     // ),
//                     // Container(
//                     //   decoration: BoxDecoration(
//                     //       color: Colors.black38,
//                     //       //color: Color(0XFFEFF3F6),
//                     //       borderRadius: BorderRadius.circular(100.0),
//                     //       boxShadow: [
//                     //         BoxShadow(
//                     //             //color: Color.fromRGBO(0, 0, 0, 0.1),
//                     //             color: Colors.black,
//                     //             offset: Offset(-2, 1),
//                     //             blurRadius: 5.0,
//                     //             spreadRadius: 1.0),
//                     //         BoxShadow(
//                     //             //color: Color.fromRGBO(255, 255, 255, 0.9),
//                     //             color: Colors.grey.shade500,
//                     //             offset: Offset(2, 4),
//                     //             blurRadius: 8.0,
//                     //             spreadRadius: -2.0)
//                     //       ]),
//                     //   child: TextField(
//                     //     style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                     //     decoration: InputDecoration(
//                     //         border: InputBorder.none,
//                     //         hintText: '******',
//                     //         hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
//                     //         suffixIcon: IconButton(
//                     //           icon: isPasswordVisible
//                     //               ? Icon(
//                     //                   Icons.visibility_off,
//                     //                   color: Colors.black38,
//                     //                 )
//                     //               : Icon(
//                     //                   Icons.visibility,
//                     //                   color: Colors.blue,
//                     //                 ),
//                     //           onPressed: () => setState(
//                     //               () => isPasswordVisible = !isPasswordVisible),
//                     //         ),
//                     //         contentPadding: EdgeInsets.all(10)),
//                     //     obscureText: isPasswordVisible,
//                     //   ),
//                     // ),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                     Container(
//                         alignment: Alignment.centerLeft,
//                         child: RichText(
//                           text: TextSpan(
//                               text: "New in DoU ",
//                               style: TextStyle(
//                                   fontSize: 11, color: Colors.yellow.shade100),
//                               children: [
//                                 TextSpan(
//                                     text: " SignUp ",
//                                     style: TextStyle(
//                                         fontSize: 12, color: Colors.blue),
//                                     recognizer: TapGestureRecognizer()
//                                       ..onTap = () {
//                                         //return Navigator.pushNamed(context, '/Log in');
//                                         Navigator.of(context).push(
//                                             MaterialPageRoute(
//                                                 builder:
//                                                     (BuildContext context) =>
//                                                         SigninPage(uid: '',)));
//                                       }),
//                                 // TextSpan(
//                                 //   text:
//                                 //       "                                                                   Forgot ",
//                                 //   style: TextStyle(
//                                 //       fontSize: 11, color: Colors.yellow.shade100),
//                                 // ),
//                                 // TextSpan(
//                                 //     text: " Password? ",
//                                 //     style:
//                                 //         TextStyle(fontSize: 12, color: Colors.blue),
//                                 //     recognizer: TapGestureRecognizer()
//                                 //       ..onTap = () {
//                                 //         //return Navigator.pushNamed(context, '/Log in');
//                                 //         Navigator.of(context).push(MaterialPageRoute(
//                                 //             builder: (BuildContext context) =>
//                                 //                 Fgpassword()));
//                                 //       })
//                               ]),
//                         )),
//                     SizedBox(height: 21),
//                     NeumorphicButton(
//                       curve: Curves.easeIn,
//                       duration: Duration(milliseconds: 260),
//                       onPressed: () {
//                         if (codeSent == false) {
//                           setState(() => loading = true);
//                         } else if (codeSent == true) {
//                           setState(() => loading = false);
//                         }
//                         verifyPhone();
//                       },
//                       style: NeumorphicStyle(
//                         color: Colors.black,
//                         // border: NeumorphicBorder(
//                         //   isEnabled: true,
//                         //   color: Colors.red,
//                         //   width: 0.1,
//                         // ),
//                         shape: NeumorphicShape.convex,
//                         boxShape: NeumorphicBoxShape.roundRect(
//                             BorderRadius.circular(15)),
//                         depth: 9,
//                         intensity: 1,
//                         surfaceIntensity: -0.2,
//                         //shadowDarkColorEmboss: Colors.amber,
//                         //shadowLightColor: Colors.black45,
//                         //oppositeShadowLightSource: false,
//                         shadowDarkColor: Colors.black12,
//                         shadowLightColor: Colors.black87,
//                         lightSource: LightSource.top,
//                         //oppositeShadowLightSource: is,
//                       ),
//                       child: Container(
//                         padding: EdgeInsets.all(5.0),
//                         width: 120,
//                         height: 30,
//                         child: Center(
//                             child: Text(
//                           "Verify",
//                           style: TextStyle(
//                               color: Colors.red,
//                               fontSize: 16.0,
//                               fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                       child: RichText(
//                           text: TextSpan(
//                         text: "Didn't receive OTP? ",
//                         style: TextStyle(
//                             fontSize: 11, color: Colors.yellow.shade100),
//                         children: [
//                           TextSpan(
//                               text: 'Resend',
//                               style:
//                                   TextStyle(fontSize: 12, color: Colors.blue),
//                               recognizer: TapGestureRecognizer()
//                                 ..onTap = () {
//                                   verifyPhone();
//                                 })
//                         ],
//                       )),
//                     ),
//                   ],
//                 )),
//           );
//   }

//   Future<void> verifyPhone() async {
//     await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: phone,
//         verificationCompleted: (PhoneAuthCredential credential) async {
//           await FirebaseAuth.instance.signInWithCredential(credential);
//           final snackBar = SnackBar(content: Text("Verified Successfully"));
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//           Navigator.pushReplacement(
//               context, BouncyPageRouteOut(widget: HomeScreen(uid: '',)));
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           // final snackBar = SnackBar(content: Text("${e.message}"));
//           final snackBar = SnackBar(
//               content: Text(
//                   "We Received Unusual Requests From This Number, Kindly Try Again Later.  "));
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         codeSent: (String verificationId, int? resendToken) {
//           setState(() {
//             codeSent = true;
//             verId = verificationId;
//             if (codeSent == false) {
//               setState(() => loading = true);
//             } else if (codeSent == true) {
//               setState(() => loading = false);
//             }
//           });
//         },
//         codeAutoRetrievalTimeout: (String verificationId) {
//           setState(() {
//             verId = verificationId;
//           });
//         },
//         timeout: Duration(seconds: 60));
//   }

//   // Future<void> verifyPin(String pin) async {
//   //   PhoneAuthCredential credential =
//   //       PhoneAuthProvider.credential(verificationId: verId, smsCode: pin);
//   //   try {
//   //     await FirebaseAuth.instance.signInWithCredential(credential);
//   //     final snackBar = SnackBar(content: Text("Verified Successfully"));
//   //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   //     Navigator.pushReplacement(
//   //         context, BouncyPageRouteOut(widget: HomeScreen(uid: '',)));
//   //   } on FirebaseAuthException catch (e) {
//   //     setState(() => loading = false);
//   //     // final snackBar = SnackBar(content: Text("${e.message}"));
//   //     final snackBar = SnackBar(content: Text("Invalid OTP"));
//   //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   //   }
//   // }
// }
