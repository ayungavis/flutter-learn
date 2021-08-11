import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({required this.index, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/icon_star_solid.png',
      width: 20,
      color: index <= rating ? Color(0xffFF9376) : Color(0xff989BA1),
    );
  }
}
