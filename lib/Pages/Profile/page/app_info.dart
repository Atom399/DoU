import 'package:doyou/Pages/Profile/page/settings.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//import 'profile_widget.dart';

class Appinfo extends StatefulWidget {
  @override
  _AppinfoState createState() => _AppinfoState();
}

class _AppinfoState extends State<Appinfo> {
  // String password = '';
  // bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
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
            //shadowLightColor: Colors.black45,
            //oppositeShadowLightSource: false,
            shadowDarkColor: Colors.black38,
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
        title: Text(
          'Security',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.yellow.shade100,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Image.asset(
          'assets/images/logo/bubbles.png',
          width: 900,
          height: 400,
          color: Colors.black,
          //alignment: Alignment.center,
          //fit: BoxFit.fitWidth,

          colorBlendMode: BlendMode.colorDodge,
          //semanticLabel: 'Dash mascot',
        ),
        Text(
          "          DoU \n          Version 2.0.226",
          //textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'OpenSans', color: Colors.red, fontSize: 30),
        )
      ]),
    );
  }
}
