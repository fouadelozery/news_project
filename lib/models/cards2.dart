import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/articalmodel.dart';

class Cards2 extends StatelessWidget {
  const Cards2({super.key, required this.articalmodel});
  final Articalmodel articalmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
                width: double.infinity,
                fit: BoxFit.cover,
                height: 220,
                articalmodel.image ?? "fouad")),
        const SizedBox(
          height: 12,
        ),
        Text(
          articalmodel.title ?? "",
          style: const TextStyle(
              fontSize: 18, color: Colors.black12, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalmodel.describtion ?? '',
          maxLines: 2,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        )
      ],
    );
  }
}
