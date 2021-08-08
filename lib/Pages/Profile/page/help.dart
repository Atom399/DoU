import 'package:doyou/Pages/Profile/page/settings.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:clipboard/clipboard.dart';
// import 'package:animations/animations.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  // String password = '';
  // bool isPasswordVisible = true;
  // TextEditingController _textController = TextEditingController();
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  // Future<void> _copyToClipboard() async {
  //   await Clipboard.setData(ClipboardData(text: _textController.text));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        //key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,

          //backgroundColor: Color(0xFFB3B1B1),
          leading: NeumorphicButton(
            margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
            padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
            // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
            // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
            // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
            // padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
            duration: Duration(milliseconds: 260),
            curve: Curves.easeIn,
            onPressed: () {
              Navigator.pop(context);
            },
            style: NeumorphicStyle(
              color: Colors.black,
              // border: NeumorphicBorder(
              //   isEnabled: true,
              //   color: Colors.red,
              //   width: 0.1,
              // ),
              shape: NeumorphicShape.convex,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
              depth: 9,
              intensity: 1,
              surfaceIntensity: -0.2,
              //shadowDarkColorEmboss: Colors.amber,
              //shadowLightColor: Colors.black,
              //oppositeShadowLightSource: false,
              shadowDarkColor: Colors.black12,
              shadowLightColor: Colors.black87,
              lightSource: LightSource.top,
              //oppositeShadowLightSource: is,
            ),
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.red,
              size: 29,
            ),
            // Icon(Icons.menu),
            // iconSize: 30.0,
            // color: Colors.white,
            // onPressed: () {},
          ),
          elevation: 0.0,
        ),
        body: Center(
            child: Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: " If You Have Any Questions Or\n ",
                    style:
                        TextStyle(fontSize: 15, color: Colors.yellow.shade100),
                    children: [
                      TextSpan(
                        text: "If You Are Facing Any Problems In Our App\n ",
                        style: TextStyle(
                            fontSize: 15, color: Colors.yellow.shade100),
                        children: [
                          TextSpan(
                              text: "Feel Free To Contact Us At\n ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.yellow.shade100),
                              children: [
                                TextSpan(
                                  text: "doyou@gmail.com ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      FlutterClipboard.copy('doyou@gmail.com');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('Copied to Clipboard'),
                                        ),
                                      );
                                    },
                                )
                              ]),
                        ],
                      ),
                    ],
                  ),
                ))));
  }
}
