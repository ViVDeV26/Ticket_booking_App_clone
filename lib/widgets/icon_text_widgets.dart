import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v1/utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key,required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
           Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          const Gap(10),
          Text(
            text,
            style: styles.textStyle,
          )
        ],
      ),
    );
  }
}
