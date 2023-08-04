// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:v1/utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final bigText;
  final smallText;
  const DoubleTextWidget({super.key,required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: styles.headlinestyle2,
        ),
        Text(
          smallText,
          style: styles.textStyle.copyWith(color: styles.primarycolor),
        )
      ],
    );
  }
}
