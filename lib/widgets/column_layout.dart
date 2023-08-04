import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v1/utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firsttext;
  final String secondtext;
  final bool? isColor;
  final CrossAxisAlignment alignment;
  const ColumnLayout({
    super.key,
    required this.alignment,
    required this.firsttext,
    required this.secondtext, this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firsttext,
          style: isColor == null
                            ? styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : styles.headlinestyle3,
        ),
        const Gap(5),
        Text(
          secondtext,
          style: isColor == null
                            ? styles.headlinestyle4
                                .copyWith(color: Colors.white)
                            : styles.headlinestyle4,
        ),
      ],
    );
  }
}
