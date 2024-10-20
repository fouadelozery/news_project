import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/newslistview.dart';

class Catogryview extends StatelessWidget {
  const Catogryview({super.key, required this.catogry});
  final String catogry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Newslistview(
          catogry: catogry,
        )
      ]),
    );
  }
}
