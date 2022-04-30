import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final dynamic bgColor;
  final dynamic iconData;
  // ignore: use_key_in_widget_constructors
  const CategoryIcon({this.bgColor, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
      child: Icon(
        iconData,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
