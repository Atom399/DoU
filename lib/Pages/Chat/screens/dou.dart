import 'package:flutter/material.dart';
import 'package:doyou/Pages/Chat/models/message_model.dart';
import 'package:doyou/Pages/Chat/screens/chat_screen.dart';

class Dou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
        bottom: 4,
      ),
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                //color: Color.fromRGBO(0, 0, 0, 0.1),
                color: Colors.black,
                offset: Offset(-3, 3),
                blurRadius: 6.0,
                spreadRadius: -1.0),
            BoxShadow(
                //color: Color.fromRGBO(255, 255, 255, 0.9),
                color: Colors.grey.shade500,
                offset: Offset(1, -1.5),
                blurRadius: 2.0,
                spreadRadius: -2.5)
          ]),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 50,
                    child: ClipRRect(
                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(30.0),
                        //   topRight: Radius.circular(30.0),
                        //),
                        child: Icon(Icons.person, color: Colors.red)
                        // ListView.builder(
                        //     itemCount: chats.length,
                        //     itemBuilder: (BuildContext context, int index) {
                        //       final Message chat = chats[index];
                        //       return GestureDetector(
                        //         onTap: () => Navigator.push(
                        //           context,
                        //           MaterialPageRoute(builder: (_) => Chatscreen()),
                        //         ),
                        //       );
                        //     }
                        //     )
                        ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "User Name1",
                        style: TextStyle(
                            color: Colors.yellow.shade100,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "You two have crush on each other",
                        style: TextStyle(color: Colors.yellow.shade100),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("12:47",
                    style: TextStyle(
                      color: Colors.yellow.shade100,
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 10),
          )
        ],
      ),
    );
  }
}
