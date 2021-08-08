import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 180,
            height: 180,
            alignment: Alignment.topCenter,
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
              'assets/images/illustration-3.png',
            ),
          ),
          Center(
            child: Container(
              color: Colors.grey.shade900,
              child: Center(
                child: SpinKitChasingDots(
                  color: Colors.red,
                  size: 50.0,
                  duration: Duration(seconds: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // color: Colors.black,
    // child: Center(
    //   child: SpinKitChasingDots(
    //     color: Colors.red,
    //     size: 50.0,
    //     duration: Duration(seconds: 2),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
