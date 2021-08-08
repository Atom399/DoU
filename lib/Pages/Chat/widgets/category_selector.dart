import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Colors.black),
      child: Row(
        children: <Widget>[
          Expanded(
              child: CustomTabBar1(
            text: "Chats",
            textColor: index == 0 ? Colors.red : Colors.white12,
            borderColor: index == 0 ? Colors.black : Colors.transparent,
          )),
          Expanded(
              child: CustomTabBar1(
            text: "DoUs",
            textColor: index == 1 ? Colors.red : Colors.white12,
            borderColor: index == 1 ? Colors.black : Colors.transparent,
          )),
        ],
      ),
    );
  }
}

class CustomTabBar1 extends StatelessWidget {
  const CustomTabBar1({
    Key? key,
    required this.text,
    required this.textColor,
    required this.borderColor,
    //required this.borderWidth,
  }) : super(key: key);
  final String text;
  final Color textColor;
  final Color borderColor;
  final double borderWidth = 3.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: borderColor, width: borderWidth),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: textColor),
      ),
    );
  }
}

// class CategorySelector extends StatefulWidget {
//   @override
//   _CategorySelectorState createState() => _CategorySelectorState();
// }

// class _CategorySelectorState extends State<CategorySelector> {
//   int selectedIndex = 0;
//   final List<String> categories = [
//     'Messages',
//     'DoU',
//     'Beeja',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 90.0,
//       //color: Theme.of(context).primaryColor,
//       color: Colors.white,
//       child: ListView.builder(
//         physics: ScrollPhysics(),
//         scrollDirection: Axis.vertical,
//         itemCount: categories.length,
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedIndex = index;
//               });
//             },
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 20.0,
//                 vertical: 30.0,
//               ),
//               child: Text(
//                 categories[index],
//                 style: TextStyle(
//                   color: index == selectedIndex ? Colors.red : Colors.black26,
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
