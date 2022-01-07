import 'package:flutter/material.dart';
import 'package:q5/src/pages/home/views/categories.dart';
import 'package:q5/src/pages/home/views/top_ui.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: const [
          TopUI(),
          Categories(),
        ],
      ),
    );
  }
}
