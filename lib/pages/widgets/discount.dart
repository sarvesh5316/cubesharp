// ignore_for_file: prefer_const_constructors

import 'package:cubesharp/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DiscountPercentageWidget extends StatelessWidget {
  final double originalPrice;
  final double discountedPrice;

  const DiscountPercentageWidget({
    super.key,
    required this.originalPrice,
    required this.discountedPrice,
  });

  @override
  Widget build(BuildContext context) {
    double discountPercentage =
        ((originalPrice - discountedPrice) / originalPrice) * 100;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '₹${originalPrice.toStringAsFixed(0)}',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade700,
            decoration: TextDecoration.lineThrough, // Add the cut mark
            decorationColor: Colors.grey, // Color of the cut mark
            decorationThickness: 2.0,
          ),
        ),
        5.widthBox,
        Text(
          '₹${discountedPrice.toStringAsFixed(0)}',
          style: TextStyle(
              fontSize: 13, color: blackColor, fontWeight: FontWeight.w500),
        ),
        5.widthBox,
        Text(
          '${discountPercentage.toStringAsFixed(0)}% off',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
