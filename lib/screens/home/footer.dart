import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
    );
  }
}
