import 'package:personalnotes/modules/category_collections.dart';
import 'package:personalnotes/screens/home/footer.dart';
import 'package:personalnotes/screens/home/grid_view_items.dart';
import 'package:flutter/material.dart';
import 'package:personalnotes/screens/home/list_view_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CategoryCollection categoryCollection = CategoryCollection();
  String layoutType = 'grid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    if (layoutType == "grid") {
                      layoutType = 'list';
                    } else {
                      layoutType = "grid";
                    }
                  });
                },
                child: Text(
                  layoutType == "grid" ? "Edit" : "Done",
                  style: const TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              child: layoutType == "grid"
                  ? GridViewItems(categoryCollection: categoryCollection)
                  : ListViewItems(categoryCollection: categoryCollection),
            )),
            const Footer()
          ],
        ));
  }
}
