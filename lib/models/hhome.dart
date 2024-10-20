import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/cards.dart';
import 'package:flutter_application_2/models/class_cards.dart';

class Hhome extends StatelessWidget {
  const Hhome({super.key});
  final List<ClassCards> card1 = const [
    ClassCards(image: 'assets/business.avif', name: 'BUSINESS'),
    ClassCards(image: 'assets/entertaiment.avif', name: 'ENtertainment'),
    ClassCards(image: 'assets/general.avif', name: 'General'),
    ClassCards(image: 'assets/health.avif', name: 'Health'),
    ClassCards(image: 'assets/science.avif', name: 'Science'),
    ClassCards(image: 'assets/sports.avif', name: 'sports'),
    ClassCards(image: 'assets/technology.jpeg', name: 'technology')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: card1.length,
        itemBuilder: (context, index) {
          return Cards(
            catogry: card1[index],
          );
        },
      ),
    );
  }
}
