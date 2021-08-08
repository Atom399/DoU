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

// import 'package:doyou/Pages/Chat/screens/chat.dart';
// import 'package:flutter/material.dart';
// import 'package:doyou/Pages/Chat/models/message_model.dart';
// import 'package:doyou/Pages/Chat/screens/chat_screen.dart';

// class ChatPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         body: Container(
//           decoration: BoxDecoration(
//             color: Colors.grey.shade900,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30.0),
//               topRight: Radius.circular(30.0),
//               bottomLeft: Radius.circular(30.0),
//               bottomRight: Radius.circular(30.0),
//             ),
//           ),
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                   child: ListView.builder(
//                       physics: ScrollPhysics(),
//                       itemCount: 30,
//                       itemBuilder: (_, index) {
//                         return IndividualChat();
//                       }))
//             ],
//           ),
//         ));
//   }
// }

import 'package:doyou/Pages/Chat/screens/chat.dart';
import 'package:doyou/Pages/Chat/screens/select_contact_page.dart';
import 'package:doyou/Pages/Chat/screens/subpages/single_communication_page.dart';
import 'package:doyou/Pages/Profile/utils/user_preferences.dart';
import 'package:doyou/Pages/animations/loading/loading.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/bloc/my_chat/my_chat_cubit.dart';
import 'package:doyou/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:doyou/Pages/Chat/models/message_model.dart';
import 'package:doyou/Pages/Chat/screens/chat_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  final UserEntity? userInfo;

  const ChatPage({Key? key, this.userInfo}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    BlocProvider.of<MyChatCubit>(context).getMyChat(uid: widget.userInfo?.uid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: BlocBuilder<MyChatCubit, MyChatState>(
        builder: (_, myChatState) {
          if (myChatState is MyChatLoaded) {
            return _mychatList(myChatState);
          }
          return _loadingWidget();
        },
      ),
      floatingActionButton: NeumorphicFloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              BouncyPageRouteOut(
                  widget: SelectContactPage(
                userInfo: widget.userInfo,
              )));
        },
        style: NeumorphicStyle(
          color: Colors.black,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
          depth: 6,
          intensity: 1,
          surfaceIntensity: -0.2,
          shadowDarkColor: Colors.grey.shade900,
          shadowLightColor: Colors.black87,
          lightSource: LightSource.top,
        ),
        child: Icon(
          Icons.chat,
          color: Colors.red,
          size: 25,
        ),
      ),
    );
  }

  Widget _emptyListDisplayMessageWidget() {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Icon(
              Icons.message,
              color: Colors.red.withOpacity(.6),
              size: 40,
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Start a chat with your friends\n on DoU",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.yellow.shade100.withOpacity(.4)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _mychatList(MyChatLoaded myChatData) {
    return myChatData.myChat!.isEmpty
        ? _emptyListDisplayMessageWidget()
        : Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: ListView.builder(
                physics: ScrollPhysics(),
                itemCount: myChatData.myChat!.length,
                itemBuilder: (_, index) {
                  final myChat = myChatData.myChat![index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          BouncyPageRouteOut(
                              widget: SingleCommunicationPage(
                            senderPhoneNumber: myChat.senderPhoneNumber,
                            senderUID: widget.userInfo?.uid,
                            senderName: myChat.senderName,
                            recipientUID: myChat.recipientUID,
                            recipientPhoneNumber: myChat.recipientPhoneNumber,
                            recipientName: myChat.recipientName,
                          )));
                    },
                    child: IndividualChat(
                      name: myChat.recipientName,
                      recentSentMessage: myChat.recentTextMessage,
                      time: DateFormat('hh:mm a').format(myChat.time!.toDate()),
                    ),
                  );
                }),
          );
  }

  Widget _loadingWidget() {
    return Center(
      child: Container(),
    );
  }
}
