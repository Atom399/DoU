// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(Drawer());
// }

// class Drawer extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DrawerPage(),
//     );
//   }
// }

// class DrawerPage extends StatefulWidget {
//   const DrawerPage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<DrawerPage> {
//   double value = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [Colors.black, Colors.cyanAccent],
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter),
//             //begin: Alignment.center,
//             //end: Alignment.topLeft),
//           ),
//         ),
//         SafeArea(child: Container()),
//         // SafeArea(
//         //   child: Container(
//         //     width: 200.0,
//         //     padding: EdgeInsets.all(8.0),
//         //     child: Column(
//         //       children: [
//         //         DrawerHeader(
//         //             child: Column(
//         //           mainAxisAlignment: MainAxisAlignment.center,
//         //           children: [
//         //             CircleAvatar(
//         //               radius: 50.0,
//         //               backgroundImage: NetworkImage(
//         //                   "https://uifaces.co/our-content/donated/gPZwCbdS.jpg"),
//         //             ),
//         //             SizedBox(height: 10.0),
//         //             Text(
//         //               "Gay Abi",
//         //               style: TextStyle(color: Colors.white, fontSize: 20.0),
//         //             ),
//         //           ],
//         //         )),
//         //         Expanded(
//         //           child: ListView(
//         //             children: [
//         //               ListTile(
//         //                   onTap: () {},
//         //                   leading: Icon(
//         //                     Icons.home,
//         //                     color: Colors.amber,
//         //                   ),
//         //                   title: Text(
//         //                     "Home",
//         //                     style: TextStyle(color: Colors.white),
//         //                   )),
//         //               ListTile(
//         //                   onTap: () {},
//         //                   leading: Icon(
//         //                     Icons.person,
//         //                     color: Colors.amber,
//         //                   ),
//         //                   title: Text(
//         //                     "Profile",
//         //                     style: TextStyle(color: Colors.white),
//         //                   )),
//         //               ListTile(
//         //                   onTap: () {},
//         //                   leading: Icon(
//         //                     Icons.settings,
//         //                     color: Colors.amber,
//         //                   ),
//         //                   title: Text(
//         //                     "Settings",
//         //                     style: TextStyle(color: Colors.white),
//         //                   )),
//         //               ListTile(
//         //                   onTap: () {},
//         //                   leading: Icon(
//         //                     Icons.logout,
//         //                     color: Colors.amber,
//         //                   ),
//         //                   title: Text(
//         //                     "Log Out",
//         //                     style: TextStyle(color: Colors.white),
//         //                   )),
//         //             ],
//         //           ),
//         //         )
//         //       ],
//         //     ),
//         //   ),
//         // ),
//         // TweenAnimationBuilder(
//         //     tween: Tween<double>(begin: 0, end: value),
//         //     duration: Duration(milliseconds: 500),
//         //     //curve: Curves.fastOutSlowIn,
//         //     curve: Curves.elasticInOut,
//         //     builder: (_, double val, __) {
//         //       return (Transform(
//         //         alignment: Alignment.center,
//         //         transform: Matrix4.identity()
//         //           ..setEntry(3, 2, 0.001)
//         //           ..setEntry(0, 3, 200 * val)
//         //           ..rotateY((pi / 6) * val),
//         //         child: Scaffold(
//         //           appBar: AppBar(
//         //             title: Text("Abi Gay House"),
//         //             backgroundColor: Colors.cyan,
//         //           ),
//         //           body: Center(
//         //             child: Column(
//         //               children: [
//         //                 Text("Abige Thunne Illa "),
//         //               ],
//         //             ),
//         //           ),
//         //         ),
//         //       ));
//         //     }),
//         // GestureDetector(
//         //   onHorizontalDragUpdate: (e) {
//         //     if (e.delta.dx > 0) {
//         //       setState(() {
//         //         value = 1;
//         //       });
//         //     } else {
//         //       setState(() {
//         //         value = 0;
//         //       });
//         //     }
//         //   },
//         // )
//         // GestureDetector(
//         //   onTap: () {
//         //     setState(() {
//         //       value == 0 ? value = 1 : value = 0;
//         //     });
//         //   },
//         // )
//       ]),
//     );
//   }
// }
