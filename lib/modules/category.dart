import 'package:personalnotes/modules/category_icon.dart';

class Category {
  String id;
  String name;
  bool isChecked;
  final CategoryIcon icon;
  Category(
      {required this.id,
      required this.icon,
      required this.name,
      this.isChecked = true});
}
