
import 'dart:async';

import 'package:bubble/bubble.dart';
import 'package:doyou/Pages/animations/loading/loading.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/bloc/communication/communication_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';

class SingleCommunicationPage extends StatefulWidget {
  final String? senderUID;
  final String? recipientUID;
  final String? senderName;
  final String? recipientName;
  final String? recipientPhoneNumber;
  final String? senderPhoneNumber;

  const SingleCommunicationPage(
      {Key? key,
      this.senderUID,
      this.recipientUID,
      this.senderName,
      this.recipientName,
      this.recipientPhoneNumber,
      this.senderPhoneNumber})
      : super(key: key);

  @override
  _SingleCommunicationPageState createState() =>
      _SingleCommunicationPageState();
}

class _SingleCommunicationPageState extends State<SingleCommunicationPage> {
  XFile? file;
  TextEditingController _textMessageController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    BlocProvider.of<CommunicationCubit>(context).getMessages(
      senderId: widget.senderUID,
      recipientId: widget.recipientUID,
    );
    _textMessageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _textMessageController.dispose();
    _scrollController.dispose();
    super.dispose();
    getPermissions();
  }

  getPermissions() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        backgroundColor: Colors.grey.shade900,
        leading: NeumorphicButton(
          margin: EdgeInsets.fromLTRB(7, 7, 8, 6),
          padding: EdgeInsets.fromLTRB(6, 7, 9, 9),
          duration: Duration(milliseconds: 260),
          curve: Curves.easeIn,
          onPressed: () {
            Navigator.pop(context);
          },
          style: NeumorphicStyle(
            color: Colors.black,
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
            depth: 9,
            intensity: 1,
            surfaceIntensity: -0.2,
            shadowDarkColor: Colors.black26,
            shadowLightColor: Colors.black87,
            lightSource: LightSource.top,
          ),
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.red,
            size: 29,
          ),
        ),
        titleSpacing: -15,
        title: Column(
          children: [
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        //alignment: Alignment.center,
                        image: AssetImage('assets/images/illustration-4.jpg'),
                        fit: BoxFit.fitHeight),
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
                          spreadRadius: -1.0),
                      BoxShadow(
                          color: Colors.grey.shade600,
                          offset: Offset(1, -1.5),
                          blurRadius: 2.0,
                          spreadRadius: -2.5)
                    ]),
                //child:
                // Icon(
                //   Icons.person,
                //   color: Colors.red,
                // )
                // Image.asset('assets/images/illustration-4.jpg'),
              ),
              horizontalTitleGap: 8,
              onTap: () {},
              title: Text(
                "${widget.recipientName}",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.yellow.shade100),
              ),
              subtitle: Text(
                '${widget.recipientPhoneNumber}',
                style: TextStyle(color: Colors.white38),
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<CommunicationCubit, CommunicationState>(
        builder: (_, communicationState) {
          if (communicationState is CommunicationLoaded) {
            return _bodyWidget(communicationState);
          }
          return Center(
            child: Loading(),
          );
        },
      ),
    );
  }

  Widget _bodyWidget(CommunicationLoaded communicationState) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/illustration-2.png',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            _messagesListWidget(communicationState),
            _sendMessageTextField(),
          ],
        )
      ],
    );
  }

  Widget _messagesListWidget(CommunicationLoaded messages) {
    Timer(Duration(milliseconds: 100), () {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInQuad,
      );
    });
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: messages.messages!.length,
        itemBuilder: (_, index) {
          final message = messages.messages![index];
          if (message.sederUID == widget.senderUID)
            return _messageLayoutReceiver(
              //getAllMessages: messages,
              color: Colors.black,
              time: DateFormat('hh:mm a').format(message.time!.toDate()),
              align: TextAlign.left,
              boxAlign: CrossAxisAlignment.start,
              crossAlign: CrossAxisAlignment.end,
              nip: BubbleNip.rightTop,
              text: message.message,
            );
          else
            return _messageLayoutSender(
              //getAllMessages: messages,
              color: Colors.white,
              time: DateFormat('hh:mm a').format(message.time!.toDate()),
              align: TextAlign.left,
              boxAlign: CrossAxisAlignment.start,
              crossAlign: CrossAxisAlignment.start,
              nip: BubbleNip.leftTop,
              text: message.message,
            );
        },
      ),
    );
  }

  Widget _sendMessageTextField() {
    // Future _takePicture() async {
    // var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    //  }
    // Future<void> _takePicture() async {
    //   final imageFile = await ImagePicker()
    //       .pickImage(source: ImageSource.camera, maxWidth: 600);
    // }

    return Container(
      margin: EdgeInsets.only(bottom: 15, left: 4, right: 4),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black38,
                  //color: Color(0XFFEFF3F6),
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(-2, 1),
                        blurRadius: 5.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(2, 4),
                        blurRadius: 8.0,
                        spreadRadius: -2.0)
                  ]),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.black,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          content: Text(
                            "Coming soon!!!\n(We are currently working on something new for the emojis\nso plz forgive us🤕🤒,\nwell you can still use the Gboard emojis😉)",
                            style: TextStyle(color: Colors.yellow.shade100),
                          )));
                    },
                    child: Icon(
                      Icons.sick_outlined,
                      size: 28,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 60,
                      ),
                      child: Scrollbar(
                        child: TextField(
                          maxLines: null,
                          style: TextStyle(fontSize: 14),
                          controller: _textMessageController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type a message",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      // Icon(
                      //   Icons.attachment_rounded,
                      //   color: Colors.red,
                      // ),
                      // SizedBox(
                      //   width: 15,
                      // ),
                      _textMessageController.text.isEmpty
                          ? InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.black,
                                    builder: (builder) => bottomSheet());
                              },
                              child: Icon(
                                Icons.arrow_circle_up,
                                size: 28,
                                color: Colors.red,
                              ))
                          : Text(""),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          // InkWell(
          //   onTap: () {
          //     if (_textMessageController.text.isNotEmpty) {
          //       _sendTextMessage();
          //     }
          //   },
          //   child:
          NeumorphicButton(
            // margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
            // padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
            margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            duration: Duration(milliseconds: 260),
            curve: Curves.easeIn,
            onPressed: () {
              if (_textMessageController.text.isNotEmpty) {
                _sendTextMessage();
              }
            },
            style: NeumorphicStyle(
              color: Colors.black,
              shape: NeumorphicShape.convex,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
              depth: 10,
              intensity: 1,
              surfaceIntensity: -0.2,
              shadowDarkColor: Colors.black26,
              shadowLightColor: Colors.black87,
              lightSource: LightSource.bottom,
            ),
            child: Icon(
              _textMessageController.text.isEmpty
                  ? Icons.flutter_dash
                  : Icons.pets,
              color: Colors.red,
            ),
          ),
          //)
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
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
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18.0),
        color: Colors.grey.shade900,
        elevation: 2,
        shadowColor: Colors.grey.shade600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                iconCreation(Icons.person, Colors.black, "Contacts", () {}),
                SizedBox(
                  width: 40,
                ),
                iconCreation(Icons.camera_alt, Colors.black, "Camera",
                    () async {
                  file = (await ImagePicker()
                      .pickImage(source: ImageSource.camera));
                }),
                SizedBox(
                  width: 40,
                ),
                iconCreation(Icons.insert_photo, Colors.black, "Gallery",
                    () async {
                  file = (await ImagePicker()
                      .pickImage(source: ImageSource.gallery));
                }),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget iconCreation(IconData icons, Color color, String text, ontap) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.red,
      borderRadius: BorderRadius.circular(30),
      onTap: ontap,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
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
                      spreadRadius: -1.0),
                  BoxShadow(
                      color: Colors.grey.shade600,
                      offset: Offset(1, -1.5),
                      blurRadius: 2.0,
                      spreadRadius: -2.5)
                ]),
            child: Icon(
              icons,
              size: 29,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.white38),
          )
        ],
      ),
    );
  }

  Widget _messageLayoutReceiver({
    text,
    time,
    color,
    align,
    boxAlign,
    nip,
    crossAlign,
  }) {
    return Column(
      crossAxisAlignment: crossAlign,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.90,
          ),
          child:
              // Container(
              //   padding: EdgeInsets.all(8),
              //   margin: EdgeInsets.all(3),
              //   child: Container(
              //     color: Colors.red,
              //     // nip: nip,
              Container(
            padding: EdgeInsets.only(left: 15, right: 20, top: 10, bottom: 10),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.black,
                //       offset: Offset(2, -1),
                //       blurRadius: 6.0,
                //       spreadRadius: -1.0),
                //   BoxShadow(
                //       color: Colors.grey.shade500,
                //       offset: Offset(1, 2),
                //       blurRadius: 3.0,
                //       spreadRadius: -2.5)
                // ]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(-2, 1),
                      blurRadius: 6.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(1, 2),
                      blurRadius: 4.0,
                      spreadRadius: -2.0)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
                ),
                SizedBox(height: 10, width: 10),
                Text(
                  time,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 11, color: Colors.white30),
                )
              ],
            ),
          ),
        ),
        // )
      ],
    );
  }

  Widget _messageLayoutSender({
    text,
    time,
    color,
    align,
    boxAlign,
    nip,
    crossAlign,
  }) {
    return Column(
      crossAxisAlignment: crossAlign,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.90,
          ),
          child:
              // Container(
              //   padding: EdgeInsets.all(8),
              //   margin: EdgeInsets.all(3),
              //   child: Container(
              //     color: Colors.red,
              //     // nip: nip,
              Container(
            padding: EdgeInsets.only(left: 15, right: 20, top: 10, bottom: 10),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
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
                      color: Colors.grey.shade500,
                      offset: Offset(1, -1.5),
                      blurRadius: 2.0,
                      spreadRadius: -2.5)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, color: Colors.yellow.shade100),
                ),
                SizedBox(height: 10, width: 10),
                Text(
                  time,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 11, color: Colors.white30),
                )
              ],
            ),
          ),
        ),
        // )
      ],
    );
  }

  void _sendTextMessage() {
    if (_textMessageController.text.isNotEmpty) {
      BlocProvider.of<CommunicationCubit>(context).sendTextMessage(
        recipientId: widget.recipientUID,
        senderId: widget.senderUID,
        recipientPhoneNumber: widget.recipientPhoneNumber,
        recipientName: widget.recipientName,
        senderPhoneNumber: widget.senderPhoneNumber,
        senderName: widget.senderName,
        message: _textMessageController.text,
      );
      _textMessageController.clear();
    }
  }
}