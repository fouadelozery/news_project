import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/articalmodel.dart';
import 'package:flutter_application_2/models/cards2.dart';
import 'package:flutter_application_2/services/newsservices.dart';

class Newslistview extends StatefulWidget {
  const Newslistview({
    super.key,
    required this.catogry,
  });
  final String catogry;
  @override
  State<Newslistview> createState() => _NewslistviewState();
}

class _NewslistviewState extends State<Newslistview> {
  List<Articalmodel> articles = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getgeneralnew();
  }

  Future<void> getgeneralnew() async {
    articles = await Newsservices(Dio()).getnews(catogry: widget.catogry);
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isloading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              shrinkWrap: true,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Cards2(
                    articalmodel: articles[index],
                  ),
                );
              }),
    );
  }
}
