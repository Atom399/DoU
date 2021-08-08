// import 'package:doyou/Pages/Chat/screens/home_screen.dart';
// import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class SetInitialProfileWidget extends StatefulWidget {
//   final String? phoneNumber;

//   const SetInitialProfileWidget({Key? key, this.phoneNumber}) : super(key: key);

//   @override
//   _SetInitialProfileWidgetState createState() =>
//       _SetInitialProfileWidgetState();
// }

// class _SetInitialProfileWidgetState extends State<SetInitialProfileWidget> {
//   String? get _phoneNumber => widget.phoneNumber;
//   TextEditingController _nameController = TextEditingController();

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//         child: Column(
//           children: <Widget>[
//             Text(
//               "Profile Info",
//               style: TextStyle(
//                 color: Colors.green,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Please provide your name and an optional Profile photo",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16,
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             _rowWidget(),
//             Expanded(
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: MaterialButton(
//                   color: Colors.green,
//                   onPressed: _submitProfileInfo,
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

//   Widget _rowWidget() {
//     return Container(
//       child: Row(
//         children: <Widget>[
//           Container(
//             width: 50,
//             height: 50,
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.all(Radius.circular(25))),
//             child: Icon(Icons.camera_alt),
//           ),
//           SizedBox(
//             width: 8,
//           ),
//           Expanded(
//             child: TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 hintText: "Enter your name",
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 8.0,
//           ),
//           Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.all(Radius.circular(25))),
//             child: Icon(Icons.insert_emoticon),
//           )
//         ],
//       ),
//     );
//   }

//   void _submitProfileInfo() {
//     if (_nameController.text.isNotEmpty) {
//       BlocProvider.of<PhoneAuthCubit>(context).submitProfileInfo(
//           profileUrl: "",
//           phoneNumber: _phoneNumber,
//           name: _nameController.text);

//       Navigator.pushReplacement(context,
//                                  BouncyPageRouteOut(widget: HomeScreen(uid: '',)));

//     }
//   }
// }
import 'package:doyou/Pages/Chat/screens/home_screen.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/bloc/phone_auth/phone_auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Name extends StatefulWidget {
  final String? phoneNumber;

  const Name({Key? key, this.phoneNumber}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  String? get _phoneNumber => widget.phoneNumber;
  TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 190),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome,",
                  style: TextStyle(
                      color: Colors.yellow.shade100,
                      fontSize: 20.0,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "please provide your name",
                  style: TextStyle(
                      color: Colors.yellow.shade100,
                      fontSize: 16.0,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      alignment: Alignment.center,
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
                        'assets/images/illustration-1.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Text(
                //   "Welcome",
                //   style: TextStyle(
                //       color: Colors.yellow.shade100,
                //       fontSize: 22.0,
                //       fontWeight: FontWeight.bold),
                // ),
                // Text(
                //   "Sign Up",
                //   style: TextStyle(
                //       color: Colors.yellow.shade100,
                //       fontSize: 19.0,
                //       fontWeight: FontWeight.w900),
                // ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                      color: Colors.yellow.shade100,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        //color: Color(0XFFEFF3F6),
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow: [
                          BoxShadow(
                              //color: Color.fromRGBO(0, 0, 0, 0.1),
                              color: Colors.black,
                              offset: Offset(-2, 1),
                              blurRadius: 5.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              //color: Color.fromRGBO(255, 255, 255, 0.9),
                              color: Colors.grey.shade500,
                              offset: Offset(2, 4),
                              blurRadius: 8.0,
                              spreadRadius: -2.0)
                        ]),
                    child: TextFormField(
                      controller: _nameController,
                      // validator: MultiValidator(
                      //     [RequiredValidator(errorText: 'errorText')]),
                      maxLength: 16,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      decoration: InputDecoration(
                          counterText: '',
                          counterStyle: TextStyle(color: Colors.grey.shade900),
                          hintStyle:
                              TextStyle(fontSize: 15, color: Colors.black26),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10)),
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '   This name will be displayed on your profile.',
                  style: TextStyle(color: Colors.yellow.shade100),
                ),
                SizedBox(
                  height: 40,
                ),
                NeumorphicButton(
                  curve: Curves.easeIn,
                  duration: Duration(milliseconds: 260),
                  onPressed: _submitProfileInfo,
                  style: NeumorphicStyle(
                    color: Colors.black,
                    // border: NeumorphicBorder(
                    //   isEnabled: true,
                    //   color: Colors.red,
                    //   width: 0.1,
                    // ),
                    shape: NeumorphicShape.convex,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
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
              ],
            ),
          ),
        ));
  }

  // Widget _rowWidget() {
  //   return Container(
  //     child: Row(
  //       children: <Widget>[
  //         Container(
  //           width: 50,
  //           height: 50,
  //           decoration: BoxDecoration(
  //               color: Colors.black,
  //               borderRadius: BorderRadius.all(Radius.circular(25))),
  //           child: Icon(Icons.camera_alt),
  //         ),
  //         SizedBox(
  //           width: 8,
  //         ),
  //         Expanded(
  //           child: TextField(
  //             controller: _nameController,
  //             decoration: InputDecoration(
  //               hintText: "Enter your name",
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: 8.0,
  //         ),
  //         Container(
  //           width: 35,
  //           height: 35,
  //           decoration: BoxDecoration(
  //               color: Colors.black,
  //               borderRadius: BorderRadius.all(Radius.circular(25))),
  //           child: Icon(Icons.insert_emoticon),
  //         )
  //       ],
  //     ),
  //   );
  // }

  void _submitProfileInfo() {
    if (_nameController.text.isNotEmpty) {
      BlocProvider.of<PhoneAuthCubit>(context).submitProfileInfo(
          profileUrl: "",
          phoneNumber: _phoneNumber,
          name: _nameController.text);

      Navigator.pushReplacement(
          context, BouncyPageRouteOut(widget: HomeScreen()));
    }
  }
}
