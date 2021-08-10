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
