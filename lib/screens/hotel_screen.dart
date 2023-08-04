// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:v1/utils/app_layout.dart';
import 'package:v1/utils/app_styles.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key,required this.hotel});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: styles.primarycolor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: styles.primarycolor,
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            hotel['place'],
            style: styles.headlinestyle2.copyWith(color: styles.kakiColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel['destination'],
            style: styles.headlinestyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
           '\$${ hotel['price']}/night',
            style: styles.headlinestyle1.copyWith(color: styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
