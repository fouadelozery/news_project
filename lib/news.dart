import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/hhome.dart';
import 'package:flutter_application_2/widget/newslistview.dart';

class News extends StatelessWidget {
  const News({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Hhome(),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                        child: Newslistview(
                      catogry: "general",
                    ))
                  ],
                ))));
  }
}
