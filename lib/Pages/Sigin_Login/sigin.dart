// import 'dart:ffi';
// import 'package:animations/animations.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:country_pickers/country.dart';
// import 'package:country_pickers/country_pickers.dart';
// import 'package:doyou/Pages/Intro/intro.dart';
// import 'package:doyou/Pages/Sigin_Login/otp.dart';
// import 'package:doyou/Pages/Sigin_Login/otp2.dart';
// import 'package:doyou/Pages/Sigin_Login/set_initial_page.dart';
// import 'package:doyou/Pages/animations/loading/loading.dart';
// import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// import 'package:doyou/bloc/auth/auth_cubit.dart';
// import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';

// import 'package:doyou/services/database.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// import 'package:doyou/Pages/Sigin_Login/login.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:intl_phone_field/phone_number.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
// import 'dialogues/policy_dialogue.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// // import 'package:form_field_validator/form_field_validator.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;

// class SigninPage extends StatefulWidget {
// final String phoneNumber = '';
// final String ?uid;
//   const SigninPage({
//     Key? key,
//     required this.uid,
//   }) : super(key: key);
//   @override
//   _SigninPageState createState() => _SigninPageState(1);
// }

// class _SigninPageState extends State<SigninPage> {
//   static Country _selectedFilteredDialogCountry =  CountryPickerUtils.getCountryByPhoneCode("91");
//     String _countryCode = _selectedFilteredDialogCountry.phoneCode;
//   String _phoneNumber="";
//  // final String? phoneNumber;

//   TextEditingController _phoneAuthController = TextEditingController();

//    TextEditingController _phoneAuthController1 = TextEditingController();
//   //  TextEditingController _phoneAuthController1 = TextEditingController();
//   // @override
//   void dispose() {
//     _phoneAuthController.dispose();
//     super.dispose();
//   }

//   //   static Country _selectedFilteredDialogCountry =
//   //     CountryPickerUtils.getCountryByName("91");
//   // String _countryCode = _selectedFilteredDialogCountry.phoneCode;

//   // //String _phoneNumber="";

//  // String get _phonenumber => Widget.phoneNumber;
//   // TextEditingController userNameTextEditingController =
//   //     new TextEditingController();
//   // TextEditingController numberTextEditingController =
//   //     new TextEditingController();
//   // TextEditingController password1TextEditingController =
//   //     new TextEditingController();
//   // TextEditingController password2TextEditingController =
//   //     new TextEditingController();
//  // TextEditingController data1 = new TextEditingController();
//  // TextEditingController data2 = new TextEditingController();
//   //TextEditingController _phoneAuthController = TextEditingController();
//   // DataBaseMethods databaseMethods = new DataBaseMethods();
//   bool? value = false;
//   bool? value1 = false;
//   bool? value2 = false;

//   var uid;

//   _SigninPageState(this.uid);

//   // String password = '';
//   // late String verId;
//   // late String phone;
//   // bool codeSent = false;
//   // bool loading = false;
//   // bool isPasswordVisible1 = true;
//   // bool isPasswordVisible2 = true;
//   @override
//     Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<PhoneAuthCubit, PhoneAuthState>(
//         listener: (context, phoneAuthState) {
//           if (phoneAuthState is PhoneAuthSuccess) {
//             BlocProvider.of<AuthCubit>(context).loggedIn();
//           }
//           if (phoneAuthState is PhoneAuthFailure){
//             Scaffold.of(context).showSnackBar(SnackBar(
//               backgroundColor: Colors.red,
//               content: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Something is wrong"),
//                     Icon(Icons.error_outline)
//                   ],
//                 ),
//               ),
//             ));
//           }
//         },
//         builder: (context, phoneAuthState) {
//           if (phoneAuthState is PhoneAuthSmsCodeReceived) {
//             return PhoneVerificationPage(
//               phoneNumber: _phoneNumber,
//             );
//           }
//           if (phoneAuthState is PhoneAuthProfileInfo) {
//             return SetInitialProfileWidget(
//               phoneNumber: _phoneNumber,
//             );
//           }
//           if (phoneAuthState is PhoneAuthLoading) {
//             return Scaffold(
//               body: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );
//           }
//           if (phoneAuthState is PhoneAuthSuccess) {
//             return BlocBuilder<AuthCubit, AuthState>(
//               builder: (context, authState) {
//                 if (authState is Authenticated) {
//               //    return BlocBuilder<UserCubit, UserState>(
//                  //   builder: (context, userState) {
//                      // if (userState is UserLoaded) {
//                      //   final currentUserInfo = userState.users.firstWhere(
//                            //     (user) => user.uid == authState.uid,
//                         //    orElse: () => UserModel());
//                      //   return HomeScreen(
//                         //  userInfo: currentUserInfo,
//                       //  );
//                       }
//                       return Container();
//                  //   },
//                 //  );
//               }
//                // return Container();
//             //  },
//             );
//           }
//           return _bodyWidget();
//         },
//       ),
//     );
//   }

// Widget _bodyWidget(){
//   return Scaffold(
//             resizeToAvoidBottomInset: false,
//             backgroundColor: Colors.grey.shade900,
//             body: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "Welcome",
//                         style: TextStyle(
//                             color: Colors.yellow.shade100,
//                             fontSize: 22.0,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         "Sign Up",
//                         style: TextStyle(
//                             color: Colors.yellow.shade100,
//                             fontSize: 19.0,
//                             fontWeight: FontWeight.w900),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             width: 180,
//                             height: 180,
//                             alignment: Alignment.center,
//                             // decoration: BoxDecoration(
//                             //   color: Colors.black,
//                             //   shape: BoxShape.circle,
//                             // ),
//                             decoration: BoxDecoration(

//                                 color: Colors.black87,
//                                 //color: Color(0XFFEFF3F6),
//                                 borderRadius: BorderRadius.circular(35.0),
//                                 boxShadow: [

//                                   BoxShadow(

//                                       //color: Colors.grey.shade800,
//                                       color: Colors.black,
//                                       offset: Offset(1, 2),
//                                       blurRadius: 5.0,
//                                       spreadRadius: 1.0),
//                                   BoxShadow(
//                                       //color: Color.fromRGBO(255, 255, 255, 0.9),
//                                       color: Colors.grey.shade500,
//                                       offset: Offset(1, 1),
//                                       blurRadius: 1.0,
//                                       spreadRadius: -3.0)
//                                 ]),
//                             child: Image.asset(
//                               'assets/images/illustration-2.png',
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       // Text(
//                       //   "Welcome",
//                       //   style: TextStyle(
//                       //       color: Colors.yellow.shade100,
//                       //       fontSize: 22.0,
//                       //       fontWeight: FontWeight.bold),
//                       // ),
//                       // Text(
//                       //   "Sign Up",
//                       //   style: TextStyle(
//                       //       color: Colors.yellow.shade100,
//                       //       fontSize: 19.0,
//                       //       fontWeight: FontWeight.w900),
//                       // ),
//                       SizedBox(
//                         height: 25.0,
//                       ),
//                       Text(
//                         "Name",
//                         style: TextStyle(
//                             color: Colors.yellow.shade100,
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(

//                           decoration: BoxDecoration(
//                               color: Colors.black38,
//                               //color: Color(0XFFEFF3F6),
//                               borderRadius: BorderRadius.circular(100.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                     //color: Color.fromRGBO(0, 0, 0, 0.1),
//                                     color: Colors.black,
//                                     offset: Offset(-2, 1),
//                                     blurRadius: 5.0,
//                                     spreadRadius: 1.0),
//                                 BoxShadow(
//                                     //color: Color.fromRGBO(255, 255, 255, 0.9),
//                                     color: Colors.grey.shade500,
//                                     offset: Offset(2, 4),
//                                     blurRadius: 8.0,
//                                     spreadRadius: -2.0)
//                               ]),
//                           child: TextFormField(
//                             controller: _phoneAuthController1,
//                             validator: MultiValidator(
//                                 [RequiredValidator(errorText: 'errorText')]),
//                             maxLength: 16,
//                             keyboardType: TextInputType.text,
//                             style: TextStyle(
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                             decoration: InputDecoration(
//                                 counterText: '',
//                                 counterStyle:
//                                     TextStyle(color: Colors.grey.shade900),
//                                 hintStyle: TextStyle(
//                                     fontSize: 15, color: Colors.black26),
//                                 border: InputBorder.none,
//                                 contentPadding: EdgeInsets.all(10)),
//                           )
//                           // TextField(
//                           //   // controller: userNameTextEditingController,
//                           //   controller: data1,
//                           //   maxLength: 16,
//                           //   keyboardType: TextInputType.text,
//                           //   style: TextStyle(
//                           //       fontSize: 20.0,
//                           //       fontWeight: FontWeight.bold,
//                           //       color: Colors.black),
//                           //   decoration: InputDecoration(
//                           //       counterText: '',
//                           //       counterStyle:
//                           //           TextStyle(color: Colors.grey.shade900),
//                           //       hintStyle: TextStyle(
//                           //           fontSize: 15, color: Colors.black26),
//                           //       border: InputBorder.none,
//                           //       contentPadding: EdgeInsets.all(10)),
//                           // ),
//                           ),
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Text(
//                         "Number",
//                         style: TextStyle(
//                             color: Colors.yellow.shade100,
//                             fontSize: 15,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       // Container(
//                       //     decoration: BoxDecoration(
//                       //         color: Colors.black38,
//                       //         //color: Color(0XFFEFF3F6),
//                       //         borderRadius: BorderRadius.circular(30.0),
//                       //         boxShadow: [
//                       //           BoxShadow(
//                       //               //color: Color.fromRGBO(0, 0, 0, 0.1),
//                       //               color: Colors.black,
//                       //               offset: Offset(-2, 1),
//                       //               blurRadius: 5.0,
//                       //               spreadRadius: 1.0),
//                       //           BoxShadow(
//                       //               //color: Color.fromRGBO(255, 255, 255, 0.9),
//                       //               color: Colors.grey.shade500,
//                       //               offset: Offset(2, 4),
//                       //               blurRadius: 8.0,
//                       //               spreadRadius: -2.0)
//                       //         ]),
//                       // codeSent
//                       //     ? OTPTextField(
//                       //         keyboardType: TextInputType.number,
//                       //         length: 6,
//                       //         width: MediaQuery.of(context).size.width,
//                       //         fieldWidth: 40,
//                       //         style: TextStyle(
//                       //           fontSize: 20,
//                       //           color: Colors.yellow.shade100,
//                       //         ),
//                       //         textFieldAlignment: MainAxisAlignment.spaceAround,
//                       //         fieldStyle: FieldStyle.box,
//                       //         otpFieldStyle: OtpFieldStyle(
//                       //           backgroundColor: Colors.black,
//                       //           borderColor: Colors.red,
//                       //         ),
//                       //         onCompleted: (pin) {
//                       //           //verifyPin(pin);
//                       //         },
//                       //       ):
//                       IntlPhoneField(

//                         dropdownDecoration: BoxDecoration(
//                             color: Colors.black87,
//                             borderRadius: BorderRadius.circular(10.0),
//                             boxShadow: [
//                               BoxShadow(
//                                   //color: Color.fromRGBO(0, 0, 0, 0.1),
//                                   color: Colors.black,
//                                   offset: Offset(-3, 3),
//                                   blurRadius: 6.0,
//                                   spreadRadius: -1.0),
//                               BoxShadow(
//                                   //color: Color.fromRGBO(255, 255, 255, 0.9),
//                                   color: Colors.grey.shade500,
//                                   offset: Offset(1, -1.5),
//                                   blurRadius: 2.0,
//                                   spreadRadius: -2.5)
//                             ]),
//                         controller: _phoneAuthController,
//                         autoValidate: true,
//                         dropDownArrowColor: Colors.red,
//                         showDropdownIcon: true,
//                         keyboardType: TextInputType.phone,
//                         countryCodeTextColor: Colors.yellow.shade100,
//                         style: TextStyle(color: Colors.yellow.shade100),
//                         decoration: InputDecoration(
//                             filled: true,
//                             enabled: false,
//                             fillColor: Colors.black54,
//                             focusColor: Colors.red,
//                             counterText: '',
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(100))),
//                         initialCountryCode: 'IN',
//                         onChanged: (phoneNumber) {
//                           setState(() {
//                             phoneNumber = phoneNumber.completeNumber as PhoneNumber;
//                           }
//                           );
//                         },
//                       ),
//                       //  : TextField(
//                       //       //controller: numberTextEditingController,
//                       //       //keyboardType: TextInputType.number,
//                       //       //maxLength: 10,
//                       //         style: TextStyle(
//                       //        fontSize: 20.0, fontWeight: FontWeight.bold),
//                       //        decoration: InputDecoration(
//                       //        prefixText: "+91 ",
//                       //        border: InputBorder.none,
//                       //        contentPadding: EdgeInsets.all(14)),
//                       //     ),
//                       //),
//                       // SizedBox(
//                       //   height: 20.0,
//                       // ),
//                       // Text("Create a password",
//                       //     style: TextStyle(
//                       //         color: Colors.yellow.shade100,
//                       //         fontSize: 15,
//                       //         fontWeight: FontWeight.normal)),
//                       // SizedBox(
//                       //   height: 10.0,
//                       // ),
//                       // Container(
//                       //   decoration: BoxDecoration(
//                       //       color: Colors.black38,
//                       //       //color: Color(0XFFEFF3F6),
//                       //       borderRadius: BorderRadius.circular(100.0),
//                       //       boxShadow: [
//                       //         BoxShadow(
//                       //             //color: Color.fromRGBO(0, 0, 0, 0.1),
//                       //             color: Colors.black,
//                       //             offset: Offset(-2, 1),
//                       //             blurRadius: 5.0,
//                       //             spreadRadius: 1.0),
//                       //         BoxShadow(
//                       //             //color: Color.fromRGBO(255, 255, 255, 0.9),
//                       //             color: Colors.grey.shade500,
//                       //             offset: Offset(2, 4),
//                       //             blurRadius: 8.0,
//                       //             spreadRadius: -2.0)
//                       //       ]),
//                       //   child: TextField(
//                       //     controller: password1TextEditingController,
//                       //     style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                       //     decoration: InputDecoration(
//                       //         border: InputBorder.none,
//                       //         hintText: '**',
//                       //         hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
//                       //         suffixIcon: IconButton(
//                       //           icon: isPasswordVisible1
//                       //               ? Icon(
//                       //                   Icons.visibility_off,
//                       //                   color: Colors.black38,
//                       //                 )
//                       //               : Icon(
//                       //                   Icons.visibility,
//                       //                   color: Colors.blue,
//                       //                 ),
//                       //           onPressed: () => setState(
//                       //               () => isPasswordVisible1 = !isPasswordVisible1),
//                       //         ),
//                       //         contentPadding: EdgeInsets.all(10)),
//                       //     obscureText: isPasswordVisible1,
//                       //   ),
//                       // ),
//                       // SizedBox(
//                       //   height: 20.0,
//                       // ),
//                       // Text("Confirm password",
//                       //     style: TextStyle(
//                       //         color: Colors.yellow.shade100,
//                       //         fontSize: 15,
//                       //         fontWeight: FontWeight.normal)),
//                       // SizedBox(
//                       //   height: 10.0,
//                       // ),
//                       // Container(
//                       //   decoration: BoxDecoration(
//                       //       color: Colors.black38,
//                       //       //color: Color(0XFFEFF3F6),
//                       //       borderRadius: BorderRadius.circular(100.0),
//                       //       boxShadow: [
//                       //         BoxShadow(
//                       //             //color: Color.fromRGBO(0, 0, 0, 0.1),
//                       //             color: Colors.black,
//                       //             offset: Offset(-2, 1),
//                       //             blurRadius: 5.0,
//                       //             spreadRadius: 1.0),
//                       //         BoxShadow(
//                       //             //color: Color.fromRGBO(255, 255, 255, 0.9),
//                       //             color: Colors.grey.shade500,
//                       //             offset: Offset(2, 4),
//                       //             blurRadius: 8.0,
//                       //             spreadRadius: -2.0)
//                       //       ]),
//                       //   child: TextField(
//                       //     controller: password2TextEditingController,
//                       //     style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                       //     decoration: InputDecoration(
//                       //         border: InputBorder.none,
//                       //         hintText: '**',
//                       //         hintStyle: TextStyle(color: Colors.black26, fontSize: 20),
//                       //         suffixIcon: IconButton(
//                       //           icon: isPasswordVisible2
//                       //               ? Icon(
//                       //                   Icons.visibility_off,
//                       //                   color: Colors.black38,
//                       //                 )
//                       //               : Icon(
//                       //                   Icons.visibility,
//                       //                   color: Colors.blue,
//                       //                 ),
//                       //           onPressed: () => setState(
//                       //               () => isPasswordVisible2 = !isPasswordVisible2),
//                       //         ),
//                       //         contentPadding: EdgeInsets.all(10)),
//                       //     obscureText: isPasswordVisible2,
//                       //   ),
//                       // ),
//                       SizedBox(
//                         height: 10.0,
//                       ),
//                       // CheckboxListTile(
//                       NeumorphicCheckbox(
//                         curve: Curves.easeIn,
//                         duration: Duration(milliseconds: 260),
//                         padding: EdgeInsets.all(0),
//                         style: NeumorphicCheckboxStyle(
//                             border: NeumorphicBorder(
//                               color: Colors.red,
//                               width: 0.9,
//                               isEnabled: value1!,
//                             ),
//                             selectedDepth: -2,
//                             lightSource: LightSource.top,
//                             unselectedDepth: 4,
//                             //disabledColor: Colors.red,
//                             //unselectedIntensity: 6,
//                             selectedIntensity: 9,
//                             selectedColor: Colors.black),
//                         //margin: EdgeInsets.all(0),
//                         value: value!,
//                         onChanged: (value) =>
//                             setState(() => this.value = value),
//                       ),
//                       SizedBox(
//                         height: 8.0,
//                       ),
//                       Container(
//                         child: RichText(
//                           text: TextSpan(
//                               text: "By creating an account, you accept our ",
//                               style: TextStyle(
//                                   fontSize: 11, color: Colors.yellow.shade100),
//                               children: [
//                                 TextSpan(
//                                     text: " Privacy Policy ",
//                                     style: TextStyle(
//                                         fontSize: 12, color: Colors.blue),
//                                     recognizer: TapGestureRecognizer()
//                                       ..onTap = () {
//                                         showModal(
//                                           context: context,
//                                           configuration:
//                                               FadeScaleTransitionConfiguration(),
//                                           builder: (context) {
//                                             return PolicyDialogue(
//                                               mdFileName: 'privacy_policy.md',
//                                             );
//                                           },
//                                         );
//                                       }),
//                                 TextSpan(
//                                     text: " and \n",
//                                     style: TextStyle(
//                                         fontSize: 11,
//                                         color: Colors.yellow.shade100)),
//                                 TextSpan(
//                                     text: "Terms and Conditions, ",
//                                     style: TextStyle(
//                                         fontSize: 12, color: Colors.blue),
//                                     recognizer: TapGestureRecognizer()
//                                       ..onTap = () {
//                                         showModal(
//                                             context: context,
//                                             configuration:
//                                                 FadeScaleTransitionConfiguration(),
//                                             builder: (context) {
//                                               return PolicyDialogue(
//                                                 mdFileName:
//                                                     'terms_conditions.md',
//                                               );
//                                             });
//                                       }),
//                                 TextSpan(
//                                   text: " Existing User? ",
//                                   style: TextStyle(
//                                       fontSize: 11,
//                                       color: Colors.yellow.shade100),
//                                 ),
//                                 TextSpan(
//                                     text: " Log in. ",
//                                     style: TextStyle(
//                                         fontSize: 12, color: Colors.blue),
//                                     recognizer: TapGestureRecognizer()
//                                       ..onTap = () {
//                                         //return Navigator.pushNamed(context, '/Log in');
//                                         // Navigator.of(context).push(
//                                         //     MaterialPageRoute(
//                                         //         builder:
//                                         //             (BuildContext context) =>
//                                         //                 Loginpage()));
//                                       })
//                               ]),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 21.0,
//                       ),
//                       NeumorphicButton(
//                         curve: Curves.easeIn,
//                         duration: Duration(milliseconds: 260),
//                         onPressed: _submitVerifyPhoneNumber,
//                         //   if (value == true) {
//                         //     // setState(() => loading = true);
//                         //   }
//                         //   // if (value == true)
//                         //   // {
//                         //   //   setState(() => loading = true);
//                         //   // } else if (codeSent == true)
//                         //   // {
//                         //   //    setState(() => loading == false);
//                         //   // }
//                         //   if (value == false) {
//                         //     setState(() {
//                         //       value1 = true;
//                         //     });
//                         //     final snackBar = SnackBar(
//                         //         content: Text(
//                         //             "Please input your name, number & accept our privacy policy before verifying your phone number"));
//                         //     ScaffoldMessenger.of(context)
//                         //         .showSnackBar(snackBar);
//                         //   } else {
//                         //     setState(() {
//                         //       value1 = false;
//                         //     });
//                         //     Navigator.push(
//                         //         context, BouncyPageRouteOut(widget: Otp2()));
//                         //     //verifyPhone();
//                         //     //   setState(() => loading = true);
//                         //   }
//                         // },
//                         style: NeumorphicStyle(
//                           color: Colors.black,
//                           // border: NeumorphicBorder(
//                           //   isEnabled: true,
//                           //   color: Colors.red,
//                           //   width: 0.1,
//                           // ),
//                           shape: NeumorphicShape.convex,
//                           boxShape: NeumorphicBoxShape.roundRect(
//                               BorderRadius.circular(15)),
//                           depth: 9,
//                           intensity: 1,
//                           surfaceIntensity: -0.2,
//                           //shadowDarkColorEmboss: Colors.amber,
//                           //shadowLightColor: Colors.black45,
//                           //oppositeShadowLightSource: false,
//                           shadowDarkColor: Colors.black12,
//                           shadowLightColor: Colors.black87,
//                           lightSource: LightSource.top,
//                           //oppositeShadowLightSource: is,
//                         ),
//                         child: Container(
//                           padding: EdgeInsets.all(5.0),
//                           width: 120,
//                           height: 30,
//                           child: Center(
//                               child: Text(
//                             "Proceed",
//                             style: TextStyle(
//                                 color: Colors.red,
//                                 fontSize: 16.0,
//                                 fontWeight: FontWeight.bold),
//                           )),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Container(
//                         child: RichText(
//                             text: TextSpan(
//                           text: "Didn't receive OTP? ",
//                           style: TextStyle(
//                               fontSize: 11, color: Colors.yellow.shade100),
//                           children: [
//                             TextSpan(
//                                 text: 'Resend',
//                                 style:
//                                     TextStyle(fontSize: 12, color: Colors.blue),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {
//                                     //verifyPhone();
//                                   })
//                           ],
//                         )),
//                       ),
//                     ])));
//   }

//   // void _openFilteredCountryPickerDialog() {
//   //   showDialog(
//   //       context: context,
//   //       builder: (_) => Theme(
//   //             data: Theme.of(context).copyWith(
//   //             //  primaryColor: primaryColor,
//   //             ),
//   //             child: CountryPickerDialog(
//   //               titlePadding: EdgeInsets.all(8.0),
//   //               searchCursorColor: Colors.black,
//   //               searchInputDecoration: InputDecoration(
//   //                 hintText: "Search",
//   //               ),
//   //               isSearchable: true,
//   //               title: Text("Select your phone code"),
//   //               onValuePicked: (Country country) {
//   //                 setState(() {
//   //                   _selectedFilteredDialogCountry = country;
//   //                   _countryCode = country.phoneCode;
//   //                 });
//   //               },
//   //               itemBuilder: _buildDialogItem,
//   //             ),
//   //           ));
//   // }

//   // Widget _buildDialogItem(Country country) {
//   //   return Container(
//   //     height: 40,
//   //     alignment: Alignment.center,
//   //     decoration: BoxDecoration(
//   //       border: Border(
//   //         bottom: BorderSide(color: Colors.black , width: 1),
//   //       ),
//   //     ),
//   //     child: Row(
//   //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //       children: <Widget>[
//   //         CountryPickerUtils.getDefaultFlagImage(country),
//   //         SizedBox(
//   //           height: 8.0,
//   //         ),
//   //         Text("+${country.phoneCode}"),
//   //         SizedBox(
//   //           height: 8.0,
//   //         ),
//   //         Text("${country.name}"),
//   //         Spacer(),
//   //         Icon(Icons.arrow_drop_down)
//   //       ],
//   //     ),
//   //   );
//   // }

//   void _openFilteredCountryPickerDialog() {
//     showDialog(
//         context: context,
//         builder: (_) => Theme(
//               data: Theme.of(context).copyWith(
//                 primaryColor: Colors.amber,
//               ),
//               child: CountryPickerDialog(
//                 titlePadding: EdgeInsets.all(8.0),
//                 searchCursorColor: Colors.black,
//                 searchInputDecoration: InputDecoration(
//                   hintText: "Search",
//                 ),
//                 isSearchable: true,
//                 title: Text("Select your phone code"),
//                 onValuePicked: (Country country) {
//                   setState(() {
//                     _selectedFilteredDialogCountry = country;
//                     _countryCode = country.phoneCode;
//                   });
//                 },
//                 itemBuilder: _buildDialogItem,
//               ),
//             ));
//   }

//   Widget _buildDialogItem(Country country) {
//     return Container(
//       height: 40,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(color: Colors.green, width: 1),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           CountryPickerUtils.getDefaultFlagImage(country),
//           SizedBox(
//             height: 8.0,
//           ),
//           Text("+${country.phoneCode}"),
//           SizedBox(
//             height: 8.0,
//           ),
//           Text("${country.name}"),
//           Spacer(),
//           Icon(Icons.arrow_drop_down)
//         ],
//       ),
//     );
//   }

//   void _submitVerifyPhoneNumber() {
//       if (_phoneAuthController.text.isNotEmpty) {
//       _phoneNumber="+$_countryCode${_phoneAuthController.text}";
//       BlocProvider.of<PhoneAuthCubit>(context).submitVerifyPhoneNumber(
//         phoneNumber: _phoneNumber,
//       );
//     }
//     if (_phoneAuthController.text.isNotEmpty) {
//       _phoneNumber="+$_countryCode${_phoneAuthController.text}";
//       BlocProvider.of<PhoneAuthCubit>(context).submitVerifyPhoneNumber(
//         phoneNumber: _phoneNumber,
//       );
//     }

//        else  if (value == false) {
//                             setState(() {
//                               value1 = true;
//                             });
//                             final snackBar = SnackBar(
//                                 content: Text(
//                                     "Please input your name, number & accept our privacy policy before verifying your phone number"));
//                             ScaffoldMessenger.of(context)
//                                 .showSnackBar(snackBar);
//                           } else {
//                             setState(() {
//                               value1 = false;
//                             });
//                           }
//   }
//     // if (_phoneAuthController.text.isNotEmpty) {
//     //   //_phoneNumber="+$_countryCode${_phoneAuthController.text}";
//     //   BlocProvider.of<PhoneAuthCubit>(context).submitVerifyPhoneNumber(
//     //     phoneNumber: "+$_countryCode() _phoneAuthController",
//     //       //   if (value == false) {
//                         //     setState(() {
//                         //       value1 = true;
//                         //     });
//                         //     final snackBar = SnackBar(
//                         //         content: Text(
//                         //             "Please input your name, number & accept our privacy policy before verifying your phone number"));
//                         //     ScaffoldMessenger.of(context)
//                         //         .showSnackBar(snackBar);
//                         //   } else {
//                         //     setState(() {
//                         //       value1 = false;
//                         //     });

// //       );
// //     }
// //      if (_phoneAuthController1.text.isNotEmpty) {
// //       //_phoneNumber="+$_countryCode${_phoneAuthController.text}";
// //       BlocProvider.of<PhoneAuthCubit>(context).submitProfileInfo(
// //         name: "+$_countryCode() _phoneAuthController1",
// //       );
// //     }

// //   }

// // }

// // //   Future<void> verifyPhone() async {
// // //     await FirebaseAuth.instance.verifyPhoneNumber(
// // //         phoneNumber: phone,
// // //         verificationCompleted: (PhoneAuthCredential credential) async {
// // //           await FirebaseAuth.instance.signInWithCredential(credential);
// // //           final snackBar = SnackBar(content: Text("Verified Successfully"));
// // //           ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // //           Map<String, dynamic> data = {
// // //             "Name": data1.text,
// // //             "Number": data2.text,
// // //           };
// // //           FirebaseFirestore.instance.collection("${data1.text}").add(data);
// // //           Navigator.pushReplacement(
// // //               context, BouncyPageRouteOut(widget: HomeScreen()));
// // //         },
// // //         verificationFailed: (FirebaseAuthException e) {
// // //           // final snackBar = SnackBar(content: Text("${e.message}"));
// // //           setState(() => loading = false);
// // //           final snackBar = SnackBar(
// // //               content: Text(
// // //                   "We Received Unusual Requests From This Number, Kindly Try Again Later.  "));
// // //           ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // //         },
// // //         codeSent: (String verificationId, int? resendToken) {
// // //           setState(() {
// // //             codeSent = true;
// // //             verId = verificationId;
// // //             value = true;
// // //             if (value == true) {
// // //               setState(() => loading = true);
// // //             } else {
// // //               setState(() => loading = false);
// // //             }
// // //             if (codeSent == true) {
// // //               setState(() => loading = false);
// // //             } else {
// // //               setState(() => loading = true);
// // //             }
// // //           });
// // //         },
// // //         codeAutoRetrievalTimeout: (String verificationId) {
// // //           setState(() {
// // //             verId = verificationId;
// // //           });
// // //         },
// // //         timeout: Duration(seconds: 60));
// // //   }

// // //   Future<void> verifyPin(String pin) async {
// // //     PhoneAuthCredential credential =
// // //         PhoneAuthProvider.credential(verificationId: verId, smsCode: pin);
// // //     try {
// // //       await FirebaseAuth.instance.signInWithCredential(credential);
// // //       final snackBar = SnackBar(content: Text("Login Success"));
// // //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // //       // Map<String, dynamic> userInfoMap = {
// // //       //   "Name": data1.text,
// // //       //   "Number": data2.text,
// // //       // };
// // //       // databaseMethods.uploadUserInfo(userInfoMap);
// // //       //userSetup(verId);
// // //       Map<String, dynamic> data = {"Name": data1.text, "Number": data2.text};
// // //       FirebaseFirestore.instance.collection("${data1.text}").add(data);
// // //       Navigator.pushReplacement(
// // //           context, BouncyPageRouteOut(widget: HomeScreen()));
// // //     } on FirebaseAuthException catch (e) {
// // //       setState(() => loading = false);
// // //       // final snackBar = SnackBar(content: Text("${e.message}"));
// // //       final snackBar = SnackBar(content: Text("Invalid OTP"));
// // //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
// // //     }
// // //   }
// // }
// // import 'package:country_pickers/country.dart';
// // import 'package:country_pickers/country_pickers.dart';
// // import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// // import 'package:doyou/Pages/Intro/intro.dart';
// // import 'package:doyou/Pages/Sigin_Login/otp2.dart';
// // import 'package:doyou/Pages/Sigin_Login/set_initial_page.dart';
// // import 'package:doyou/bloc/auth/auth_cubit.dart';
// // import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
// // import 'package:doyou/data/model/user_model.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';

// // final FirebaseAuth _auth = FirebaseAuth.instance;

// // class SigninPage extends StatefulWidget {
// // final String phoneNumber = '';
// // final String ?uid;
// //   const SigninPage({
// //     Key? key,
// //     required this.uid,
// //   }) : super(key: key);
// //   @override
// //   _SigninPageState createState() => _SigninPageState();
// // }

// // class _SigninPageState extends State<SigninPage> {

// // // class SigninPage extends StatefulWidget {
// // //   @override
// // //   _SigninPageState createState() => _SigninPagState();
// // // }

// // // class _RegistrationScreenState extends State<Regis> {
// //   static Country _selectedFilteredDialogCountry =
// //       CountryPickerUtils.getCountryByPhoneCode("92");
// //   String _countryCode = _selectedFilteredDialogCountry.phoneCode;
// //   String _phoneNumber="";
// //     TextEditingController _nameController = TextEditingController();

// //   TextEditingController _phoneAuthController = TextEditingController();

// //   @override
// //   void dispose() {
// //     _phoneAuthController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: BlocConsumer<PhoneAuthCubit, PhoneAuthState>(
// //         listener: (context, phoneAuthState) {
// //           if (phoneAuthState is PhoneAuthSuccess) {
// //             BlocProvider.of<AuthCubit>(context).loggedIn();
// //           }
// //           if (phoneAuthState is PhoneAuthFailure){
// //             Scaffold.of(context).showSnackBar(SnackBar(
// //               backgroundColor: Colors.red,
// //               content: Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 15),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Text("Something is wrong"),
// //                     Icon(Icons.error_outline)
// //                   ],
// //                 ),
// //               ),
// //             ));
// //           }
// //         },
// //         builder: (context, phoneAuthState) {
// //           if (phoneAuthState is PhoneAuthSmsCodeReceived) {
// //             return PhoneVerificationPage(
// //               phoneNumber: _phoneNumber,
// //             );
// //           }
// //           if (phoneAuthState is PhoneAuthProfileInfo) {
// //             return SetInitialProfileWidget(
// //               phoneNumber: _phoneNumber,
// //             );
// //           }
// //           if (phoneAuthState is PhoneAuthLoading) {
// //             return Scaffold(
// //               body: Center(
// //                 child: CircularProgressIndicator(),
// //               ),
// //             );
// //           }
// //           if (phoneAuthState is PhoneAuthSuccess) {
// //             return BlocBuilder<AuthCubit, AuthState>(
// //               builder: (context, authState) {
// //                 if (authState is Authenticated) {
// //               //    return BlocBuilder<UserCubit, UserState>(
// //                  //   builder: (context, userState) {
// //                      // if (userState is UserLoaded) {
// //                      //   final currentUserInfo = userState.users.firstWhere(
// //                            //     (user) => user.uid == authState.uid,
// //                         //    orElse: () => UserModel());
// //                      //   return HomeScreen(
// //                         //  userInfo: currentUserInfo,
// //                       //  );
// //                       }
// //                       return Container();
// //                  //   },
// //                 //  );
// //               }
// //                // return Container();
// //             //  },
// //             );
// //           }
// //           return _bodyWidget();
// //         },
// //       ),
// //     );
// //   }

// //   Widget _bodyWidget() {
// //     return Scaffold(
// //       body: Container(
// //         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
// //         child: Column(
// //           children: <Widget>[
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: <Widget>[
// //                 Text(""),
// //                 Text(
// //                   "Verify your phone number",
// //                   style: TextStyle(
// //                       fontSize: 18,
// //                       color: Colors.green,
// //                       fontWeight: FontWeight.w500),
// //                 ),
// //                 Icon(Icons.more_vert)
// //               ],
// //             ),
// //             SizedBox(
// //               height: 30
// //             ),
// //             Text(
// //             "sIGN IN",
// //               style: TextStyle(
// //                 fontSize: 16,
// //               ),
// //             ),

// //             SizedBox(
// //               height: 30,
// //             ),
// //             ListTile(
// //               onTap: _openFilteredCountryPickerDialog,
// //               title: _buildDialogItem(_selectedFilteredDialogCountry),
// //             ),
// //             Row(
// //               children: <Widget>[
// //                 Container(
// //                   decoration: BoxDecoration(
// //                       border: Border(
// //                           bottom: BorderSide(
// //                     width: 1.50,
// //                     color: Colors.green,
// //                   ))),
// //                   width: 80,
// //                   height: 42,
// //                   alignment: Alignment.center,
// //                   child: Text("${_selectedFilteredDialogCountry.phoneCode}"),
// //                 ),

// //                 SizedBox(
// //                   width: 8.0,
// //                 ),
// //                 Expanded(
// //                   child: Container(
// //                     height: 40,
// //                     child: TextField(
// //                       controller: _phoneAuthController,
// //                       decoration: InputDecoration(hintText: "Phone Number"),
// //                     ),
// //                   ),
// //                 ),

// //               ],
// //             ),
// //             Expanded(
// //               child: Align(
// //                 alignment: Alignment.bottomCenter,
// //                 child: MaterialButton(
// //                   color: Colors.green,
// //                   onPressed: _submitVerifyPhoneNumber,
// //                   child: Text(
// //                     "Next",
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   void _openFilteredCountryPickerDialog() {
// //     showDialog(
// //         context: context,
// //         builder: (_) => Theme(
// //               data: Theme.of(context).copyWith(
// //                 primaryColor: Colors.amber,
// //               ),
// //               child: CountryPickerDialog(
// //                 titlePadding: EdgeInsets.all(8.0),
// //                 searchCursorColor: Colors.black,
// //                 searchInputDecoration: InputDecoration(
// //                   hintText: "Search",
// //                 ),
// //                 isSearchable: true,
// //                 title: Text("Select your phone code"),
// //                 onValuePicked: (Country country) {
// //                   setState(() {
// //                     _selectedFilteredDialogCountry = country;
// //                     _countryCode = country.phoneCode;
// //                   });
// //                 },
// //                 itemBuilder: _buildDialogItem,
// //               ),
// //             ));
// //   }

// //   Widget _buildDialogItem(Country country) {
// //     return Container(
// //       height: 40,
// //       alignment: Alignment.center,
// //       decoration: BoxDecoration(
// //         border: Border(
// //           bottom: BorderSide(color: Colors.green, width: 1),
// //         ),
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         children: <Widget>[
// //           CountryPickerUtils.getDefaultFlagImage(country),
// //           SizedBox(
// //             height: 8.0,
// //           ),
// //           Text("+${country.phoneCode}"),
// //           SizedBox(
// //             height: 8.0,
// //           ),
// //           Text("${country.name}"),
// //           Spacer(),
// //           Icon(Icons.arrow_drop_down)
// //         ],
// //       ),
// //     );
// //   }

// //   void _submitVerifyPhoneNumber() {
// //     if (_phoneAuthController.text.isNotEmpty) {
// //       _phoneNumber="+$_countryCode${_phoneAuthController.text}";
// //       BlocProvider.of<PhoneAuthCubit>(context).submitVerifyPhoneNumber(
// //         phoneNumber: _phoneNumber,
// //       );
// //     }
// //   }
// //    void _submitProfileInfo() {
// //     if (_nameController.text.isNotEmpty) {
// //       BlocProvider.of<PhoneAuthCubit>(context).submitProfileInfo(
// //           profileUrl: "",
// //           phoneNumber: _phoneNumber,
// //           name: _nameController.text);
// //     }
// //    }
//  }

import 'dart:ffi';
import 'package:animations/animations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:doyou/Pages/Intro/intro.dart';
import 'package:doyou/Pages/Sigin_Login/otp.dart';
import 'package:doyou/Pages/Sigin_Login/otp2.dart';
import 'package:doyou/Pages/Sigin_Login/set_initial_page.dart';
import 'package:doyou/Pages/animations/loading/loading.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/bloc/auth/auth_cubit.dart';
import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
import 'package:doyou/bloc/user/user_cubit.dart';
import 'package:doyou/data/model/user_model.dart';

import 'package:doyou/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:doyou/Pages/Chat/screens/home_screen.dart';
import 'package:doyou/Pages/Sigin_Login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'dialogues/policy_dialogue.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:form_field_validator/form_field_validator.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SigninPage extends StatefulWidget {
  final String phoneNumber = '';
//final String name= '';
  final String? uid;
  const SigninPage({
    Key? key,
    required this.uid,
  }) : super(key: key);
  @override
  _SigninPageState createState() => _SigninPageState(1);
}

class _SigninPageState extends State<SigninPage> {
  static Country _selectedFilteredDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode("91");
  String _countryCode = _selectedFilteredDialogCountry.phoneCode;
  String _phoneNumber = "";
  //String _name= "";
//TextEditingController _phoneAuthController = TextEditingController();
  TextEditingController _phoneAuthController1 = TextEditingController();
  void dispose() {
    _phoneAuthController1.dispose();
    super.dispose();
  }

  bool? value = false;
  bool? value1 = false;
  bool? value2 = false;

  var uid;

  _SigninPageState(this.uid);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PhoneAuthCubit, PhoneAuthState>(
        listener: (context, phoneAuthState) {
          if (phoneAuthState is PhoneAuthSuccess) {
            BlocProvider.of<AuthCubit>(context).loggedIn();
          }
          if (phoneAuthState is PhoneAuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.black,
              content: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Something went wrong 🥴",
                      style: TextStyle(color: Colors.yellow.shade100),
                    ),
                    Icon(Icons.error_outline)
                  ],
                ),
              ),
            ));
          }
        },
        builder: (context, phoneAuthState) {
          if (phoneAuthState is PhoneAuthSmsCodeReceived) {
            return PhoneVerificationPage(
              phoneNumber: _phoneNumber,
            );
          }
          if (phoneAuthState is PhoneAuthProfileInfo) {
            return Name(
              phoneNumber: _phoneNumber,
            );
          }
          if (phoneAuthState is PhoneAuthLoading) {
            return Loading();
          }
          if (phoneAuthState is PhoneAuthSuccess) {
            return BlocBuilder<AuthCubit, AuthState>(
              builder: (context, authState) {
                if (authState is Authenticated) {
                  return BlocBuilder<UserCubit, UserState>(
                    builder: (context, userState) {
                      if (userState is UserLoaded) {
                        final currentUserInfo = userState.users.firstWhere(
                            (user) => user.uid == authState.uid,
                            orElse: () => UserModel());
                        return HomeScreen(
                          userInfo: currentUserInfo,
                        );
                      }
                      return Container();
                    },
                  );
                }
                return Container();
              },
            );
          }
          return _bodyWidget();
        },
      ),
    );
  }

  Widget _bodyWidget() {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 150,
            ),
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome to",
                        style: TextStyle(
                            color: Colors.yellow.shade100,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "DoU",
                        style: TextStyle(
                            color: Colors.yellow.shade100,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(35.0),
                                boxShadow: [
                                  BoxShadow(
                                      //color: Colors.grey.shade800,
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
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Number",
                        style: TextStyle(
                            color: Colors.yellow.shade100,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      IntlPhoneField(
                        dropdownDecoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                  //color: Color.fromRGBO(0, 0, 0, 0.1),
                                  color: Colors.black,
                                  offset: Offset(-3, 3),
                                  blurRadius: 6.0,
                                  spreadRadius: -1.0),
                              BoxShadow(
                                  //color: Color.fromRGBO(255, 255, 255, 0.9),
                                  color: Colors.grey.shade500,
                                  offset: Offset(1, -1.5),
                                  blurRadius: 2.0,
                                  spreadRadius: -2.5)
                            ]),
                        controller: _phoneAuthController1,
                        autoValidate: false,
                        dropDownArrowColor: Colors.red,
                        showDropdownIcon: true,
                        keyboardType: TextInputType.phone,
                        countryCodeTextColor: Colors.yellow.shade100,
                        style: TextStyle(color: Colors.yellow.shade100),
                        decoration: InputDecoration(
                            filled: true,
                            enabled: false,
                            fillColor: Colors.black54,
                            focusColor: Colors.red,
                            counterText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100))),
                        initialCountryCode: 'IN',
                        onChanged: (phoneNumber) {
                          setState(() {
                            phoneNumber =
                                phoneNumber.completeNumber as PhoneNumber;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // CheckboxListTile(
                      NeumorphicCheckbox(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 260),
                        padding: EdgeInsets.all(0),
                        style: NeumorphicCheckboxStyle(
                            border: NeumorphicBorder(
                              color: Colors.red,
                              width: 0.9,
                              isEnabled: value1!,
                            ),
                            selectedDepth: -2,
                            lightSource: LightSource.top,
                            unselectedDepth: 4,
                            //disabledColor: Colors.red,
                            //unselectedIntensity: 6,
                            selectedIntensity: 9,
                            selectedColor: Colors.black),
                        //margin: EdgeInsets.all(0),
                        value: value!,
                        onChanged: (value) =>
                            setState(() => this.value = value),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              text: "By creating an account, you accept our ",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.yellow.shade100),
                              children: [
                                TextSpan(
                                    text: " Privacy Policy ",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        showModal(
                                          context: context,
                                          configuration:
                                              FadeScaleTransitionConfiguration(),
                                          builder: (context) {
                                            return PolicyDialogue(
                                              mdFileName: 'privacy_policy.md',
                                            );
                                          },
                                        );
                                      }),
                                TextSpan(
                                    text: " and \n",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.yellow.shade100)),
                                TextSpan(
                                    text: "Terms and Conditions, ",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.blue),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        showModal(
                                            context: context,
                                            configuration:
                                                FadeScaleTransitionConfiguration(),
                                            builder: (context) {
                                              return PolicyDialogue(
                                                mdFileName:
                                                    'terms_conditions.md',
                                              );
                                            });
                                      }),
                                // TextSpan(
                                //   text: " Existing User? ",
                                //   style: TextStyle(
                                //       fontSize: 11,
                                // color: Colors.yellow.shade100),
                                //  ),
                                // TextSpan(
                                //     text: " Log in. ",
                                //     style: TextStyle(
                                //         fontSize: 12, color: Colors.blue),
                                //     recognizer: TapGestureRecognizer()
                                //       ..onTap = () {
                                //         //return Navigator.pushNamed(context, '/Log in');
                                //         // Navigator.of(context).push(
                                //         //     MaterialPageRoute(
                                //         //         builder:
                                //         //             (BuildContext context) =>
                                //         //                 Loginpage()));
                                //       })
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 21.0,
                      ),
                      NeumorphicButton(
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 260),
                        onPressed: _submitVerifyPhoneNumber,
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
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          width: 120,
                          height: 30,
                          child: Center(
                              child: Text(
                            "Proceed",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      // SizedBox(height: 20),
                      // Container(
                      //   child: RichText(
                      //       text: TextSpan(
                      //     text: "Didn't receive OTP? ",
                      //     style: TextStyle(
                      //         fontSize: 11, color: Colors.yellow.shade100),
                      //     children: [
                      //       TextSpan(
                      //           text: 'Resend',
                      //           style:
                      //               TextStyle(fontSize: 12, color: Colors.blue),
                      //           recognizer: TapGestureRecognizer()
                      //             ..onTap = () {
                      //               //verifyPhone();
                      //             })
                      //     ],
                      //   )),
                      //  ),
                    ]))));
  }

  void _openFilteredCountryPickerDialog() {
    showDialog(
        context: context,
        builder: (_) => Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.amber,
              ),
              child: CountryPickerDialog(
                titlePadding: EdgeInsets.all(8.0),
                searchCursorColor: Colors.black,
                searchInputDecoration: InputDecoration(
                  hintText: "Search",
                ),
                isSearchable: true,
                title: Text("Select your phone code"),
                onValuePicked: (Country country) {
                  setState(() {
                    _selectedFilteredDialogCountry = country;
                    _countryCode = country.phoneCode;
                  });
                },
                itemBuilder: _buildDialogItem,
              ),
            ));
  }

  Widget _buildDialogItem(Country country) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.green, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            height: 8.0,
          ),
          Text("+${country.phoneCode}"),
          SizedBox(
            height: 8.0,
          ),
          Text("${country.name}"),
          Spacer(),
          Icon(Icons.arrow_drop_down)
        ],
      ),
    );
  }

  void _submitVerifyPhoneNumber() {
    if (value == false) {
      setState(() {
        value1 = true;
      });
      final snackBar = SnackBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.black,
          content: Text(
            "Please input your name, number & accept our privacy policy before verifying your phone number😅",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.yellow.shade100),
          ));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (_phoneAuthController1.text.isNotEmpty) {
      //  _phoneNumber="{_phoneAuthController.text}";
      _phoneNumber = "+$_countryCode${_phoneAuthController1.text}";
      BlocProvider.of<PhoneAuthCubit>(context).submitVerifyPhoneNumber(
        phoneNumber: _phoneNumber,
      );
    }
  }
}
