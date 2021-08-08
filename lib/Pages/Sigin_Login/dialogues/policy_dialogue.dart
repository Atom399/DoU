import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:animations/animations.dart';

class PolicyDialogue extends StatelessWidget {
  PolicyDialogue({Key? key, this.radius = 8, required this.mdFileName})
      : assert(mdFileName.contains('.md'),
            'The file must contain the .md extension'),
        super(key: key);
  final double radius;
  final String mdFileName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future:
                    Future.delayed(Duration(milliseconds: 150)).then((value) {
                  return rootBundle.loadString('assets/md/$mdFileName');
                }),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Markdown(
                      //data: snapshot.data,
                      data: snapshot.toString(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            padding: EdgeInsets.all(0),
            color: Theme.of(context).buttonColor,
            onPressed: () => Navigator.of(context).pop(),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(radius),
              bottomRight: Radius.circular(radius),
            )),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(radius),
                  bottomRight: Radius.circular(radius),
                ),
              ),
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              child: Text(
                "CLOSE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.button!.color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
