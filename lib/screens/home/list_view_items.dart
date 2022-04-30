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
    return ListView(
      children: widget.categoryCollection.categories
          .map((category) => ListTile(
                leading: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: const Icon(Icons.check)),
                title: Row(
                  children: [
                    category.icon,
                    const SizedBox(
                      width: 10,
                    ),
                    Text(category.name),
                  ],
                ),
                trailing: const Icon(Icons.reorder),
                tileColor: Colors.grey[800],
              ))
          .toList(),
    );
  }
}
