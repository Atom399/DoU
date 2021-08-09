import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/data/model/user_model.dart';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/widget/button_widget.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/widget/numbers_widget.dart';
import 'package:doyou/Pages/Profile/model/user.dart';
import 'package:doyou/Pages/Profile/page/edit_profile_page.dart';
import 'package:doyou/Pages/Profile/utils/user_preferences.dart';
import 'package:doyou/Pages/Profile/widget/appbar_widget.dart';
import 'package:doyou/Pages/Profile/widget/profile_widget.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2800));
    _animationController.repeat();
    // reverse: true, period: Duration(milliseconds: 900));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  // UserModel? currentUser;
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: buildAppBar(context),
          backgroundColor: Colors.black87,
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                margin: EdgeInsets.only(
                  right: 125,
                  left: 120,
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
                  onClicked: () async {
                    await Navigator.push(
                        context, BouncyPageRouteOut(widget: EditProfilePage()));
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(height: 24),
              buildName(user),
              // const SizedBox(height: 24),
              // Center(child: buildUpgradeButton()),
              // const SizedBox(height: 24),
              // NumbersWidget(),
              const SizedBox(height: 48),
              buildAbout(user),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(children: [
        ShaderMask(
          child: Text(
            // "${currentUser!.name}",
            user.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
                fontFamily: 'OpenSans'),
          ),
          shaderCallback: (rect) {
            return LinearGradient(
                // begin: Alignment.centerLeft,
                // end: Alignment.centerRight,
                stops: [
                  _animation.value - 0.5,
                  _animation.value,
                  _animation.value + 0.5
                ], colors: [
              Colors.grey.shade900,
              Colors.red,
              Colors.grey.shade900
            ]).createShader(rect);
          },
          blendMode: BlendMode.srcIn,
        ),

        const SizedBox(height: 30),
        //   Text(
        //     user.email,
        //     style: TextStyle(color: Colors.grey),
        //   )
        // ],
      ]);
  // Widget buildUpgradeButton() => ButtonWidget(
  //       text: 'Upgrade To PRO',
  //       onClicked: () {},
  //     );

  Widget buildAbout(User user) => Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                offset: Offset(-3, 3),
                blurRadius: 6.0,
                spreadRadius: -1.0),
            BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(1, -1.5),
                blurRadius: 2.0,
                spreadRadius: -2.5)
          ]),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Wrap(
          //crossAxisAlignment: WrapCrossAlignment.start,
          alignment: WrapAlignment.start,
          spacing: 10.0,
          children: [
            Column(
              children: [
                ListTile(
                  title: Text(
                    'About',
                    style:
                        TextStyle(fontSize: 18, color: Colors.yellow.shade100),
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
                      padding:
                          const EdgeInsets.only(bottom: 10, left: 1, top: 3),
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
                  subtitle: Text(
                    user.about,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 13,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.red,
                  thickness: 0.2,
                  indent: 70,
                ),
                ListTile(
                  title: Text(
                    'Phone',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow.shade100,
                    ),
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
                              color: Colors.black,
                              offset: Offset(-3, 3),
                              blurRadius: 6.0,
                              spreadRadius: -2.0),
                          BoxShadow(
                              color: Colors.grey.shade500,
                              offset: Offset(1, -1.5),
                              blurRadius: 4.0,
                              spreadRadius: -2.5)
                        ]),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 10, left: 1, top: 5),
                      child: NeumorphicIcon(
                        Icons.phone,
                        style: NeumorphicStyle(
                            color: Colors.red,
                            shape: NeumorphicShape.convex,
                            shadowDarkColor: Colors.white10,
                            shadowLightColor: Colors.grey.shade800),
                        size: 24,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    user.email,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 13,
                    ),
                  ),
                )
              ],
            ),
          ]));
}
