import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalnotes/modules/category.dart';
import 'package:personalnotes/modules/category_icon.dart';

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
        home: const FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List categories = [
      Category(
          id: "Today",
          name: "Today",
          icon: const CategoryIcon(
              bgColor: CupertinoColors.systemBlue,
              iconData: Icons.inbox_rounded)),
      Category(
          id: "Scheduled",
          name: "Scheduled",
          icon: const CategoryIcon(
            bgColor: CupertinoColors.systemGrey,
            iconData: Icons.inbox_rounded,
          )),
      Category(
          id: "All",
          name: "All",
          icon: const CategoryIcon(
              bgColor: CupertinoColors.activeOrange,
              iconData: CupertinoIcons.flag_fill)),
      Category(
          id: "Flagged",
          name: "Flagged",
          icon: const CategoryIcon(
              bgColor: CupertinoColors.activeOrange,
              iconData: CupertinoIcons.flag_fill))
    ];
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
              child: GridView.count(
                  childAspectRatio: 16 / 9,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(10),
                  children: categories
                      .map(
                        (category) => Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                      .toList()),
            )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle),
                      label: const Text("New Reminder"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Add list"),
                    )
                  ]),
            )
          ],
        ));
  }
}
