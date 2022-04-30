import 'package:flutter/cupertino.dart';
import 'package:personalnotes/modules/category.dart';
import 'package:personalnotes/modules/category_icon.dart';
import 'package:flutter/material.dart';

class CategoryCollection {
  final List categories = [
    Category(
        id: "Today",
        name: "Today",
        icon: const CategoryIcon(
            bgColor: CupertinoColors.systemBlue,
            iconData: CupertinoIcons.calendar_today)),
    Category(
        id: "Scheduled",
        name: "Scheduled",
        icon: const CategoryIcon(
          bgColor: CupertinoColors.systemRed,
          iconData: CupertinoIcons.calendar_today,
        )),
    Category(
        id: "All",
        name: "All",
        icon: const CategoryIcon(
            bgColor: CupertinoColors.systemGrey,
            iconData: Icons.inbox_rounded)),
    Category(
        id: "Flagged",
        name: "Flagged",
        icon: const CategoryIcon(
            bgColor: CupertinoColors.activeOrange,
            iconData: CupertinoIcons.flag_fill))
  ];
}
