import 'package:flutter/material.dart';
import 'package:learn_from_bwa/theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int totalItem;

  FacilityItem(
      {required this.name, required this.imageUrl, required this.totalItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          this.imageUrl,
          width: 32,
        ),
        SizedBox(height: 8),
        Text.rich(TextSpan(
            text: '${this.totalItem}',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                  text: ' ${this.name}',
                  style: greyTextStyle.copyWith(fontSize: 14))
            ])),
      ],
    );
  }
}
