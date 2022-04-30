import 'package:flutter/material.dart';
import 'package:personalnotes/modules/category_collections.dart';

class ListViewItems extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const ListViewItems({
    required this.categoryCollection,
  });
  final CategoryCollection categoryCollection;

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: widget.categoryCollection.categories
            .map((category) => Text(category.name))
            .toList(),
      ),
    );
  }
}
