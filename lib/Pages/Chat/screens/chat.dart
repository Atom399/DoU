// import 'package:flutter/material.dart';
// import 'package:doyou/Pages/Chat/models/message_model.dart';
// import 'package:doyou/Pages/Chat/models/user_model.dart';

// class ChatScreen extends StatefulWidget {
//   final User? user;
//   ChatScreen({this.user});

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   // ignore: unused_element
//   _buildMessage(Message message, bool isMe) {
//     final Container msg = Container(
//       margin: isMe
//           ? EdgeInsets.only(
//               top: 8.0,
//               bottom: 8.0,
//               left: 80.0,
//             )
//           : EdgeInsets.only(
//               top: 8.0,
//               bottom: 8.0,
//             ),
//       padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
//       width: MediaQuery.of(context).size.width * 0.75,
//       decoration: BoxDecoration(
//         color: isMe ? Theme.of(context).accentColor : Color(0xFFF8F0EF),
//         borderRadius: isMe
//             ? BorderRadius.only(
//                 topLeft: Radius.circular(15.0),
//                 bottomLeft: Radius.circular(15.0),
//               )
//             : BorderRadius.only(
//                 topRight: Radius.circular(15.0),
//                 bottomRight: Radius.circular(15.0),
//               ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             message.time!,
//             style: TextStyle(
//               color: Colors.blueGrey,
//               fontSize: 16.0,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             message.text!,
//             style: TextStyle(
//               color: Colors.blueGrey,
//               fontSize: 16.0,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//     if (isMe) {
//       return msg;
//     }
//     return Row(
//       children: <Widget>[
//         msg,
//         IconButton(
//           icon: message.isLiked!
//               ? Icon(Icons.favorite)
//               : Icon(Icons.favorite_border),
//           iconSize: 30.0,
//           color: message.isLiked!
//               ? Theme.of(context).primaryColor
//               : Colors.blueGrey,
//           onPressed: () {},
//         )
//       ],
//     );
//   }

//   _buildMessageComposer() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 8.0),
//       height: 70.0,
//       color: Colors.white,
//       child: Row(
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.photo),
//             iconSize: 25.0,
//             color: Theme.of(context).primaryColor,
//             onPressed: () {},
//           ),
//           Expanded(
//             child: TextField(
//               textCapitalization: TextCapitalization.sentences,
//               onChanged: (value) {},
//               decoration: InputDecoration.collapsed(
//                 hintText: 'Send a message...',
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.send),
//             iconSize: 25.0,
//             color: Theme.of(context).primaryColor,
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       appBar: AppBar(
//         title: Text(
//           widget.user!.name!,
//           style: TextStyle(
//             fontSize: 28.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         elevation: 0.0,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.more_horiz),
//             iconSize: 30.0,
//             color: Colors.white,
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: GestureDetector(
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     topRight: Radius.circular(30.0),
//                   ),
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     topRight: Radius.circular(30.0),
//                   ),
//                   child: ListView.builder(
//                     reverse: true,
//                     padding: EdgeInsets.only(top: 15.0),
//                     itemCount: messages.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       final Message message = messages[index];
//                       final bool isMe = message.sender!.id == currentUser.id;
//                       return _buildMessage(message, isMe);
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             _buildMessageComposer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:doyou/Pages/Chat/models/message_model.dart';
import 'package:doyou/Pages/Chat/screens/chat_screen.dart';

class IndividualChat extends StatelessWidget {
  final String? time;
  final String? recentSentMessage;
  final String? name;

  const IndividualChat({Key? key, this.time, this.recentSentMessage, this.name})
      : super(key: key);
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
                  color: Colors.grey.shade600,
                  offset: Offset(1, -1.5),
                  blurRadius: 2.0,
                  spreadRadius: -2.5)
            ]),
        child: Container(
          padding: EdgeInsets.only(bottom: 8),
          margin: EdgeInsets.only(bottom: 5, left: 10, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            //alignment: Alignment.center,
                            image:
                                AssetImage('assets/images/illustration-4.jpg'),
                            fit: BoxFit.fitHeight),
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
                              spreadRadius: -2.5) //-3.0
                        ]),
                    //child:
                    // Icon(
                    //   Icons.person,
                    //   color: Colors.red,
                    // )
                    // Image.asset('assets/images/illustration-4.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$name",
                        style: TextStyle(
                            color: Colors.yellow.shade100,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                          width: 260,
                          child: Text(
                            "$recentSentMessage",
                            style: TextStyle(color: Colors.white38),
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ))
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text("$time",
                    style: TextStyle(
                      color: Colors.white38,
                    )),
              )
            ],
          ),
        ));
  }
}
