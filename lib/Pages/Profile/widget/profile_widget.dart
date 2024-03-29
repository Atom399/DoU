import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = imagePath.contains('https://')
        ? NetworkImage(imagePath)
        : FileImage(File(imagePath));

    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Material(
        borderOnForeground: false,
        borderRadius: BorderRadius.circular(100),
        elevation: 0,
        shadowColor: Colors.grey,
        animationDuration: Duration(milliseconds: 400),
        color: Colors.transparent,
        child: Ink.image(
          image: image as ImageProvider,
          fit: BoxFit.cover,
          width: 165,
          height: 165,
          child: InkWell(
            onTap: onClicked,
            highlightColor: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.black,
        all: 0.2,
        child: buildCircle(
          color: color,
          all: 7,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            //color: Colors.red.shade400,
            color: Colors.red,

            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
