import 'package:flutter/material.dart';
import 'package:doyou/Pages/Intro/intro.dart';
import 'package:doyou/Pages/Intro/login_screen.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
//  import  'package:animated_text/animated_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  late final String uid;
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Stack(
              //fit: StackFit.expand,
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Opacity(
                    opacity: 0.9,
                    child: Image.asset(
                      'assets/images/logo/2396.jpeg',
                      height: 600.0,
                      width:200,
                      fit: BoxFit.contain,
                    )),
                Shimmer.fromColors(
                  period: Duration(milliseconds: 1000),
                  baseColor: Color(0x8E0A0A0A),
                  highlightColor: Colors.white,
                  //Color(0xFF06FAEE),
                  direction: ShimmerDirection.ltr,
                  child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text("      from    \nSpaceBum",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'OpenSans',
                          ))
                      // shadows: <Shadow>[
                      //   Shadow(
                      //       blurRadius: 18.0,
                      //       color: Colors.white,
                      //       offset: Offset.fromDirection(120, 12))
                      // ]),
                      ),
                ),
              ],
            ),
          ),
        ));
  }
}
