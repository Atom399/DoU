// import 'package:flutter/material.dart';
// import 'package:doyou/Pages/Chat/models/message_model.dart';
// import 'package:doyou/Pages/Chat/screens/chat_screen.dart';

// class RecentChats extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 10, right: 10, left: 10),
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30.0),
//           topRight: Radius.circular(30.0),
//           bottomLeft: Radius.circular(30.0),
//           bottomRight: Radius.circular(30.0),
//         ),
//       ),
//       child: Column(
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: <Widget>[
//                   Container(
//                     height: 60,
//                     width: 50,
//                     child: ClipRRect(
//                         // borderRadius: BorderRadius.only(
//                         //   topLeft: Radius.circular(30.0),
//                         //   topRight: Radius.circular(30.0),
//                         //),
//                         child: Icon(Icons.person)
//                         // ListView.builder(
//                         //     itemCount: chats.length,
//                         //     itemBuilder: (BuildContext context, int index) {
//                         //       final Message chat = chats[index];
//                         //       return GestureDetector(
//                         //         onTap: () => Navigator.push(
//                         //           context,
//                         //           MaterialPageRoute(builder: (_) => Chatscreen()),
//                         //         ),
//                         //       );
//                         //     }
//                         //     )
//                         ),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "User Name",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.w500),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Text(
//                         "hi sule",
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               Text("12:47")
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 60, right: 10),
//           )
//         ],
//       ),
//     );
//   }
// }
        //         child: Container(
        //           margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
        //           padding:
        //               EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        //           decoration: BoxDecoration(
        //             color: chat.unread! ? Color(0xFFFFEFEE) : Colors.white,
        //             borderRadius: BorderRadius.only(
        //               topRight: Radius.circular(20.0),
        //               bottomRight: Radius.circular(20.0),
        //             ),
        //           ),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: <Widget>[
        //               Row(
        //                 children: <Widget>[
        //                   CircleAvatar(
        //                     radius: 35.0,
        //                     backgroundImage: AssetImage(chat.sender!.imageUrl!),
        //                   ),
        //                   SizedBox(width: 10.0),
        //                   Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: <Widget>[
        //                       Text(
        //                         chat.sender!.name!,
        //                         style: TextStyle(
        //                           color: Colors.grey,
        //                           fontSize: 15.0,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                       SizedBox(height: 5.0),
        //                       Container(
        //                         width: MediaQuery.of(context).size.width * 0.45,
        //                         child: Text(
        //                           chat.text!,
        //                           style: TextStyle(
        //                             color: Colors.blueGrey,
        //                             fontSize: 15.0,
        //                             fontWeight: FontWeight.w600,
        //                           ),
        //                           overflow: TextOverflow.ellipsis,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //               Column(
        //                 children: <Widget>[
        //                   Text(
        //                     chat.time!,
        //                     style: TextStyle(
        //                       color: Colors.grey,
        //                       fontSize: 15.0,
        //                       fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                   SizedBox(height: 5.0),
        //                   chat.unread!
        //                       ? Container(
        //                           width: 40.0,
        //                           height: 20.0,
        //                           decoration: BoxDecoration(
        //                             color: Theme.of(context).primaryColor,
        //                             borderRadius: BorderRadius.circular(30.0),
        //                           ),
        //                           alignment: Alignment.center,
        //                           child: Text(
        //                             'NEW',
        //                             style: TextStyle(
        //                               color: Colors.white,
        //                               fontSize: 12.0,
        //                               fontWeight: FontWeight.bold,
        //                             ),
        //                           ),
        //                         )
        //                       : Text(''),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),