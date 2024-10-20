import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/class_cards.dart';
import 'package:flutter_application_2/widget/catogryview.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.catogry});
  final ClassCards catogry;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Catogryview(
            catogry: catogry.name,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 90,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(catogry.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              catogry.name,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
