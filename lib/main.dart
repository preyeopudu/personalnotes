import 'package:flutter/material.dart';
import 'package:personalnotes/modules/category_collections.dart';
import 'package:personalnotes/screens/footer.dart';
import 'package:personalnotes/screens/home/grid_view_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
            appBarTheme: const AppBarTheme(color: Colors.black)),
        debugShowCheckedModeBanner: false,
        home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final CategoryCollection categoryCollection = CategoryCollection();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Edit",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black,
              child: GridViewItems(categoryCollection: categoryCollection),
            )),
            const Footer()
          ],
        ));
  }
}
