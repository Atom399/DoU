import 'package:doyou/Pages/Chat/screens/home_screen.dart';
import 'package:doyou/Pages/animations/loading/loading.dart';
import 'package:doyou/Pages/animations/page_transition/BouncyPageRouteOut.dart';
import 'package:doyou/bloc/get_device_number/get_device_numbers_cubit.dart';
import 'package:doyou/bloc/user/user_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doyou/domain/entities/contact_entity.dart';
import 'package:doyou/domain/entities/user_entity.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'subpages/single_communication_page.dart';

class SelectContactPage extends StatefulWidget {
  final UserEntity? userInfo;

  const SelectContactPage({Key? key, this.userInfo}) : super(key: key);

  @override
  _SelectContactPageState createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  TextEditingController searchController = new TextEditingController();
  final SlidableController slidableController = SlidableController();
  Icon custIcon = Icon(
    Icons.favorite_border,
    color: Colors.red,
    size: 25,
  );

  @override
  void initState() {
    super.initState();
    getPermissions();
  }

  getPermissions() async {
    if (await Permission.contacts.request().isGranted) {
      BlocProvider.of<GetDeviceNumbersCubit>(context).getDeviceNumbers();
    } else {
      Navigator.push(context, BouncyPageRouteOut(widget: HomeScreen()));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black,
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Text(
            "Don't you wanna know if your friends/crush are on DoU😐? \nso give DoU permission to access your contacts so that you will know who's on DoU😉.",
            style: TextStyle(color: Colors.yellow.shade100),
          ),
          //Image.asset('assets/profile_default.png'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDeviceNumbersCubit, GetDeviceNumbersState>(
      builder: (context, contactNumberState) {
        if (contactNumberState is GetDeviceNumbersLoaded) {
          return BlocBuilder<UserCubit, UserState>(
            builder: (context, userState) {
              if (userState is UserLoaded) {
                final List<ContactEntity> contacts = [];
                final dbUsers = userState.users
                    .where((user) => user.uid != widget.userInfo?.uid)
                    .toList();
                contactNumberState.contacts!.forEach((deviceUserNumber) {
                  dbUsers.forEach(
                    (dbUser) {
                      if (dbUser.phoneNumber ==
                          deviceUserNumber.phoneNumber!.replaceAll(' ', '')) {
                        contacts.add(ContactEntity(
                          label: dbUser.name,
                          phoneNumber: dbUser.phoneNumber,
                          uid: dbUser.uid,
                          status: dbUser.status,
                        ));
                      }
                    },
                  );
                });
                return Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: Colors.grey.shade900,
                  appBar: AppBar(
                    leading: NeumorphicButton(
                      margin: EdgeInsets.fromLTRB(7, 5, 8, 10),
                      padding: EdgeInsets.fromLTRB(6, 6, 9, 9),
                      duration: Duration(milliseconds: 260),
                      curve: Curves.easeIn,
                      onPressed: () {
                        Navigator.pop(context);
                        // context, BouncyPageRouteOut(widget: HomeScreen()));
                      },
                      style: NeumorphicStyle(
                        color: Colors.black,
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(15)),
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
                    elevation: 0.0,
                    backgroundColor: Colors.grey.shade900,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Select Contact",
                            style: TextStyle(
                              color: Colors.yellow.shade100,
                            )),
                        Text(
                          "${contacts.length} contacts",
                          style: TextStyle(color: Colors.white38, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  body: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(30.0),
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
                            child: TextFormField(
                              controller: searchController,
                              maxLength: 16,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                  hintText: 'Search...',
                                  counterText: '',
                                  prefixIcon:
                                      Icon(Icons.search, color: Colors.red),
                                  counterStyle:
                                      TextStyle(color: Colors.grey.shade900),
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.black26),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(15)),
                            )),
                        SizedBox(
                          height: 50,
                        ),
                        _listContact(contacts),
                      ],
                    ),
                  ),
                );
              }
              return Scaffold(body: Container());
            },
          );
        }
        return Loading();
      },
    );
  }

  Widget _listContact(List<ContactEntity> contacts) {
    return Expanded(
      child: Container(
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
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (ctx, index) {
            return Slidable(
              controller: slidableController,
              closeOnScroll: true,
              actionPane: SlidableStrechActionPane(),
              actionExtentRatio: 0.25,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        child: Icon(
                          Icons.message,
                          color: Colors.red,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              BouncyPageRouteOut(
                                  widget: SingleCommunicationPage(
                                recipientName: contacts[index].label,
                                recipientPhoneNumber:
                                    contacts[index].phoneNumber,
                                recipientUID: contacts[index].uid,
                                senderName: widget.userInfo?.name,
                                senderUID: widget.userInfo?.uid,
                                senderPhoneNumber: widget.userInfo?.phoneNumber,
                              )));
                          BlocProvider.of<UserCubit>(context).createChatChannel(
                              uid: widget.userInfo?.uid,
                              otherUid: contacts[index].uid);
                        },
                      )),
                )
              ],
              secondaryActions: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                          child: custIcon,
                          onTap: () {
                            setState(() {
                              if (this.custIcon.icon == Icons.favorite_border) {
                                this.custIcon = Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 25,
                                );
                              } else {
                                this.custIcon = Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                  size: 25,
                                );
                              }
                            });
                          })),
                )
              ],
              child: Container(
                margin: EdgeInsets.only(bottom: 5, left: 10, top: 10),
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
                                  image: AssetImage(
                                      'assets/images/illustration-4.jpg'),
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
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${contacts[index].label}",
                                style: TextStyle(
                                    color: Colors.yellow.shade100,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${contacts[index].phoneNumber}",
                                style: TextStyle(color: Colors.white38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
