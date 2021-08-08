import 'dart:io';
// ignore: unused_import
import 'dart:math';
import 'dart:ui';

import 'package:doyou/Pages/Profile/model/user.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:doyou/Pages/Profile/page/profile_page.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:doyou/Pages/Profile/utils/user_preferences.dart';
import 'package:doyou/Pages/Profile/widget/profile_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/widget/appbar_widget.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/widget/button_widget.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/widget/textfield_widget.dart';
import 'package:path/path.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late User user;

  @override
  void initState() {
    super.initState();

    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Builder(
          builder: (context) => Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.black87,
            //appBar: buildAppBar(context),
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
                child: Icon(
                  Icons.arrow_back_sharp,
                  // color: Colors.cyanAccent,
                  color: Colors.red,

                  size: 29,
                ),
                // Icon(Icons.menu),
                // iconSize: 30.0,
                // color: Colors.white,
                // onPressed: () {},
              ),
              title: Text('Edit Profile',
                  style: TextStyle(
                    color: Colors.yellow.shade100,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              elevation: 0.0,
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 32),
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  margin: EdgeInsets.only(
                    right: 92,
                    left: 92,
                  ),
                  height: 175,
                  width: 50,
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
                  child: ProfileWidget(
                    imagePath: user.imagePath,
                    isEdit: true,
                    onClicked: () async {
                      final image = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);

                      if (image == null) return;

                      final directory =
                          await getApplicationDocumentsDirectory();
                      final name = basename(image.path);
                      final imageFile = File('${directory.path}/$name');
                      final newImage =
                          await File(image.path).copy(imageFile.path);

                      setState(
                          () => user = user.copy(imagePath: newImage.path));
                    },
                  ),
                ),
                const SizedBox(height: 24),
                // TextFieldWidget(
                //   label: 'Name',
                //   text: user.name,
                //   onChanged: (name) => user = user.copy(name: name),
                // ),
                Text(
                  "Name",
                  style: TextStyle(
                      color: Colors.yellow.shade100,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 12,
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
                  child: TextField(
                    maxLength: 16,
                    onChanged: (name) => user = user.copy(name: name),
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                        hintText: user.name,
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                const SizedBox(height: 24),
                // TextFieldWidget(
                //   label: 'Phone',
                //   text: user.email,
                //   onChanged: (email) => user = user.copy(email: email),
                // ),
                Text(
                  "Phone",
                  style: TextStyle(
                      color: Colors.yellow.shade100,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 12,
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
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (email) => user = user.copy(email: email),
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: user.email,
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                const SizedBox(height: 24),
                // TextFieldWidget(
                //   label: 'About',
                //   text: user.about,
                //   maxLines: 5,
                //   onChanged: (about) => user = user.copy(about: about),
                // ),
                Text(
                  "About",
                  style: TextStyle(
                      color: Colors.yellow.shade100,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      //color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(15.0),
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
                  child: TextField(
                    maxLines: 5,
                    maxLength: 260,
                    onChanged: (about) => user = user.copy(about: about),
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                        hintText: user.about,
                        contentPadding: EdgeInsets.all(20)),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: NeumorphicButton(
                    margin: EdgeInsets.only(right: 90, left: 90),
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    curve: Curves.easeIn,
                    duration: Duration(milliseconds: 260),
                    onPressed: () {
                      UserPreferences.setUser(user);
                      Navigator.pop(
                          context, BouncyPageRouteOut(widget: widget));
                    },
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
                      depth: 7,
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
                        'Save',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
