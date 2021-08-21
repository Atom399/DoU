import 'package:doyou/Pages/Profile/page/profile_page.dart';
import 'package:doyou/Pages/Sigin_Login/login.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'app_info.dart';
// ignore: unused_import
import 'change_number.dart';
import 'change_password.dart';
import 'help.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool state1 = true;
  bool state2 = false;

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
          'Settings',
          style: TextStyle(
            color: Colors.yellow.shade100,
            letterSpacing: 1,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      body: ListView(
        //padding: EdgeInsets.all(10.0),
        children: [
          Container(
              padding: EdgeInsets.all(16.0),
              child: Text('General',
                  style: TextStyle(
                      color: Colors.yellow.shade100,
                      fontSize: 22,
                      fontWeight: FontWeight.bold))),
          // Divider(
          //   color: Colors.black,
          //   endIndent: 10,
          //   indent: 10,
          //   thickness: 0.6,
          // ),
          // ListTile(
          //   title: Text(
          //     'Change Number',
          //     style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
          //   ),
          //   leading: Icon(
          //     Icons.send_to_mobile,
          //     color: Colors.red,
          //     size: 25,
          //   ),
          //   onTap: () {
          //     // Navigator.of(context).push(MaterialPageRoute(
          //     //     builder: (BuildContext context) => ChangeNum()));
          //   },
          // ),
          // ListTile(
          //   title: Text(
          //     'Change Password',
          //     style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
          //   ),
          //   leading: Icon(
          //     Icons.phonelink_lock_rounded,
          //     color: Colors.red,
          //     size: 25,
          //   ),3
          //   onTap: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (BuildContext context) => ChangePas()));
          //   },
          // ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      //color: Color.fromRGBO(0, 0, 0, 0.1),
                      color: Colors.black,
                      offset: Offset(-3, 3),
                      blurRadius: 6.0,
                      spreadRadius: -1.0),
                  BoxShadow(
                      //color: Color.fromRGBO(255, 255, 255, 0.9),
                      color: Colors.grey.shade600,
                      offset: Offset(1, -1.5),
                      blurRadius: 2.0,
                      spreadRadius: -2.5)
                ]),
            child: Column(children: [
              ListTile(
                title: Text(
                  'App Info',
                  style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            //color: Color.fromRGBO(0, 0, 0, 0.1),
                            color: Colors.black,
                            offset: Offset(-3, 3),
                            blurRadius: 6.0,
                            spreadRadius: -2.0),
                        BoxShadow(
                            //color: Color.fromRGBO(255, 255, 255, 0.9),
                            color: Colors.grey.shade500,
                            offset: Offset(1, -1.5),
                            blurRadius: 4.0,
                            spreadRadius: -2.5)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 1, top: 3),
                    child: NeumorphicIcon(
                      Icons.info_outline,
                      style: NeumorphicStyle(
                          color: Colors.red,
                          shape: NeumorphicShape.convex,
                          shadowDarkColor: Colors.white10,
                          shadowLightColor: Colors.grey.shade800),
                      size: 27,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(BouncyPageRouteOut(widget: Appinfo()));
                },
              ),
              Divider(
                color: Colors.red,
                thickness: 0.2,
                indent: 70,
                endIndent: 10,
              ),
              ListTile(
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            //color: Color.fromRGBO(0, 0, 0, 0.1),
                            color: Colors.black,
                            offset: Offset(-3, 3),
                            blurRadius: 6.0,
                            spreadRadius: -2.0),
                        BoxShadow(
                            //color: Color.fromRGBO(255, 255, 255, 0.9),
                            color: Colors.grey.shade500,
                            offset: Offset(1, -1.5),
                            blurRadius: 4.0,
                            spreadRadius: -2.5)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 1, top: 3),
                    child: NeumorphicIcon(
                      Icons.help_outline,
                      style: NeumorphicStyle(
                          color: Colors.red,
                          shape: NeumorphicShape.convex,
                          shadowDarkColor: Colors.white10,
                          shadowLightColor: Colors.grey.shade800),
                      size: 27,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Help()));
                },
              ),
            ]),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Notifications',
                style: TextStyle(
                    color: Colors.yellow.shade100,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      //color: Color.fromRGBO(0, 0, 0, 0.1),
                      color: Colors.black,
                      offset: Offset(-3, 3),
                      blurRadius: 6.0,
                      spreadRadius: -1.0),
                  BoxShadow(
                      //color: Color.fromRGBO(255, 255, 255, 0.9),
                      color: Colors.grey.shade600,
                      offset: Offset(1, -1.5),
                      blurRadius: 2.0,
                      spreadRadius: -2.5)
                ]),
            child: Column(children: [
              ListTile(
                title: Text(
                  'Messages',
                  style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
                ),
                trailing: NeumorphicSwitch(
                  curve: Curves.bounceInOut,
                  duration: Duration(milliseconds: 400),
                  height: 19,
                  value: state1,
                  onChanged: (bool s1) {
                    setState(() {
                      state1 = s1;
                      print(state1);
                    });
                  },
                  isEnabled: true,
                  style: NeumorphicSwitchStyle(
                      activeThumbColor: Colors.red,
                      activeTrackColor: Colors.black,
                      inactiveThumbColor: Colors.grey.shade900,
                      inactiveTrackColor: Colors.black54,
                      //lightSource: LightSource.top,
                      thumbBorder:
                          NeumorphicBorder(color: Colors.black54, width: 0.9),
                      thumbDepth: 1,
                      thumbShape: NeumorphicShape.convex,
                      // trackBorder: NeumorphicBorder(color: Colors.red, width: 0.4),
                      trackDepth: 1,
                      disableDepth: false),
                ),
              ),
              ListTile(
                title: Text(
                  'Matches',
                  style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
                ),
                trailing: NeumorphicSwitch(
                  curve: Curves.bounceInOut,
                  duration: Duration(milliseconds: 400),
                  height: 19,
                  value: state2,
                  onChanged: (bool s2) {
                    setState(() {
                      state2 = s2;
                      print(state2);
                    });
                  },
                  isEnabled: true,
                  style: NeumorphicSwitchStyle(
                      activeThumbColor: Colors.red,
                      activeTrackColor: Colors.black,
                      inactiveThumbColor: Colors.grey.shade900,
                      inactiveTrackColor: Colors.black54,
                      //lightSource: LightSource.top,
                      thumbBorder:
                          NeumorphicBorder(color: Colors.black54, width: 0.9),
                      thumbDepth: 1,
                      thumbShape: NeumorphicShape.convex,
                      // trackBorder: NeumorphicBorder(color: Colors.red, width: 0.4),
                      trackDepth: 1,
                      disableDepth: false),
                ),
              ),
            ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: NeumorphicButton(
                  margin: EdgeInsets.only(right: 30, left: 10),
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  curve: Curves.bounceInOut,
                  duration: Duration(milliseconds: 260),
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //     context, BouncyPageRouteOut(widget: Loginpage()));
                  },
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
                      "Log Out",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
