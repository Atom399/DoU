import 'package:doyou/Pages/Chat/screens/chat_screen.dart';
import 'package:doyou/Pages/Chat/screens/dou_screen.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteIn.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:doyou/Pages/Chat/widgets/category_selector.dart';
import 'package:doyou/Pages/Chat/widgets/recent_chats.dart';
// ignore: unused_import
import 'package:doyou/Pages/Chat/widgets/favorite_contacts.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/page/edit_profile_page.dart';
import 'package:doyou/Pages/Profile/page/profile_page.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/page/settings.dart';
// ignore: unused_import
import 'package:doyou/Pages/Profile/utils/user_preferences.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatefulWidget {
  final String? phoneNumber;

  const HomeScreen({Key? key, this.phoneNumber, this.userInfo})
      : super(key: key);

  final UserEntity? userInfo;
  // const HomeScreen({
  //   Key? key,
  //   required this.uid, this.phoneNumber,
  // }) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? get _phoneNumber => widget.phoneNumber;

  int _currentPageIndex = 0;
  PageController _pageViewController = PageController(initialPage: 0);
  List<Widget> get _pages => [
        ChatPage(
          userInfo: widget.userInfo,
        ),
        Douscreen()
      ];
  Icon custIcon = Icon(
    Icons.search,
    color: Colors.red,
    size: 25,
  );
  Widget custSearchBar = Text(
    'Chats',
    style: TextStyle(
      color: Colors.yellow.shade100,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    ),
  );

  @override
  Widget build(BuildContext context) {
    // final user = UserPreferences.getUser();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        brightness: Brightness.light,
        backgroundColor: Colors.grey.shade900,
        leading: NeumorphicButton(
          margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
          padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
          // margin: EdgeInsets.fromLTRB(6, 5, 2, 10),
          // padding: EdgeInsets.fromLTRB(8, 9, 9, 9),
          // margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
          // padding: E`dgeInsets.fromLTRB(9, 9, 8, 9),
          duration: Duration(milliseconds: 260),
          curve: Curves.easeIn,
          onPressed: () {
            Navigator.push(context, BouncyPageRouteIn(widget: ProfilePage()));
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
            shadowDarkColor: Colors.grey.shade900,
            shadowLightColor: Colors.black87,
            lightSource: LightSource.top,
            //oppositeShadowLightSource: is,
          ),
          child: Icon(
            Icons.account_circle_outlined,
            color: Colors.red,
            //Color(0xFFFF0000),
            size: 29,
          ),
          // Icon(Icons.menu),
          // iconSize: 30.0,
          // color: Colors.white,
          // onPressed: () {},
        ),
        title: custSearchBar,
        elevation: 0.0,
        actions: <Widget>[
          NeumorphicButton(
              margin: EdgeInsets.fromLTRB(2, 5, 6, 10),
              padding: EdgeInsets.fromLTRB(9, 9, 8, 9),
              duration: Duration(milliseconds: 260),
              curve: Curves.easeIn,
              onPressed: () {
                setState(() {
                  if (this.custIcon.icon == Icons.search) {
                    this.custIcon = Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: 25,
                    );
                    this.custSearchBar = Container(
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          //color: Color(0XFFEFF3F6),
                          borderRadius: BorderRadius.circular(30.0),
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
                        textInputAction: TextInputAction.go,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Search... ",
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black38),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    );
                  } else {
                    this.custIcon = Icon(
                      Icons.search,
                      color: Colors.red,
                      size: 25,
                    );
                    this.custSearchBar = Text(
                      'Chats',
                      style: TextStyle(
                        color: Colors.yellow.shade100,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }
                });
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
                shadowDarkColor: Colors.grey.shade900,
                shadowLightColor: Colors.black87,
                lightSource: LightSource.top,
                //oppositeShadowLightSource: is,
              ),
              child: custIcon
              // child: Icon(
              //   Icons.search,
              //   color: Colors.red,
              //   size: 25,
              // ),
              ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CustomTabBar(index: _currentPageIndex),
          Expanded(
            // child: Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(30.0),
            //       topRight: Radius.circular(30.0),
            //     ),
            //   ),
            child: PageView.builder(
              itemCount: _pages.length,
              controller: _pageViewController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              itemBuilder: (_, index) {
                return _pages[index];
              },
            ),

            // RecentChats(),
          ),
        ],
      ),
      // floatingActionButton: NeumorphicFloatingActionButton(
      //   onPressed: () {},
      //   style: NeumorphicStyle(
      //     color: Colors.black,
      //     shape: NeumorphicShape.convex,
      //     boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
      //     depth: 6,
      //     intensity: 1,
      //     surfaceIntensity: -0.2,
      //     shadowDarkColor: Colors.grey.shade900,
      //     shadowLightColor: Colors.black87,
      //     lightSource: LightSource.top,
      //   ),
      //   child: Icon(
      //     Icons.chat,
      //     color: Colors.red,
      //     size: 25,
      //   ),
      // ),
    );
  }
}
