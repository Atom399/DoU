import 'package:doyou/Pages/Chat/screens/chat.dart';
import 'package:doyou/Pages/Chat/screens/dou.dart';
import 'package:flutter/material.dart';
import 'package:doyou/Pages/Chat/models/message_model.dart';
import 'package:doyou/Pages/Chat/screens/chat_screen.dart';

class Douscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      physics: ScrollPhysics(),
                      itemCount: 30,
                      itemBuilder: (_, index) {
                        return Dou();
                      }))
            ],
          ),
        ));
  }
}
