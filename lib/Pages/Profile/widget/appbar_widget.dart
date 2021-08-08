import 'dart:ui';

// ignore: unused_import
// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doyou/Pages/Chat/screens/home_screen.dart';
import 'package:doyou/Pages/Profile/page/settings.dart';
import 'package:doyou/Pages/Profile/utils/user_preferences.dart';
// ignore: unused_import
// import 'package:dou/Pages/Profile_Page/themes.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

AppBar buildAppBar(BuildContext context) {
  final user = UserPreferences.getUser();
  final isDarkMode = user.isDarkMode;
  // ignore: unused_local_variable
  final icon = isDarkMode ? Icons.settings : Icons.settings;

  return AppBar(
    backgroundColor: Colors.grey.shade900,
    leading: NeumorphicButton(
      margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
      padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
      // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
      // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
      // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
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
        shadowDarkColor: Colors.black26,
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
      'Profile',
      style: TextStyle(
        color: Colors.yellow.shade100,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevation: 0.0,
    actions: <Widget>[
      NeumorphicButton(
        margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
        padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
        duration: Duration(milliseconds: 260),
        curve: Curves.easeIn,
        onPressed: () {
          Navigator.push(context, BouncyPageRouteOut(widget: SettingsPage()));
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
          shadowDarkColor: Colors.black26,
          shadowLightColor: Colors.black87,
          lightSource: LightSource.top,
          //oppositeShadowLightSource: is,
        ),
        child: Icon(
          Icons.settings_sharp,
          color: Colors.red,
          size: 25,
        ),
        // Icon(Icons.menu),
        // iconSize: 30.0,
        // color: Colors.white,
        // onPressed: () {},
      ),
    ],
  );
}
