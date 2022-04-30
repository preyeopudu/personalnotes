import 'package:flutter/material.dart';
import 'package:personalnotes/modules/category_collections.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({
    Key? key,
    required this.categoryCollection,
  }) : super(key: key);

  final CategoryCollection categoryCollection;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 16 / 9,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: categoryCollection.categories
            .map(
              (category) => Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [category.icon, const Text("0")],
                      ),
                      Text(category.name)
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF1A191D),
                ),
              ),
            )
            .toList());
  }
}
