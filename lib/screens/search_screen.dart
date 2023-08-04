// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v1/utils/app_layout.dart';
import 'package:v1/utils/app_styles.dart';
import 'package:v1/widgets/App_ticket_tabs.dart';
import 'package:v1/widgets/double_text_widget.dart';
import 'package:v1/widgets/icon_text_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text('What are\nyou looking for?',
              style: styles.headlinestyle1.copyWith(fontSize: 35)),
          const Gap(20),
          const Apptickettabs(
            firsttab: 'Airline Tickets',
            secondtab: 'Hotels',
          ),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Center(
                child: Text(
              'Find Tickets',
              style: styles.textStyle.copyWith(color: Colors.white),
            )),
          ),
          const Gap(40),
          const DoubleTextWidget(
              bigText: 'Upcoming flights', smallText: 'View all'),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                height: 425,
                width: Size.width * 0.42,
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/sit.jpg'))),
                    ),
                    const Gap(12),
                    Text(
                      '20% Discount on the early booking of this flight. Don\'t miss,',
                      style: styles.headlinestyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: Size.width * 0.44,
                        decoration: BoxDecoration(
                            color: const Color(0Xff3AB8B8),
                            borderRadius: BorderRadius.circular(18)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor Survey,',
                              style: styles.headlinestyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Gap(10),
                            Text(
                              'Take the survey about our survices and get discounts,',
                              style: styles.headlinestyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0XFF189999))),
                        ),
                      )
                    ],
                  ),
                  const Gap(15),
                  Container(
                    width: Size.width * 0.44,
                    height: 210,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: styles.headlinestyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(15),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 35)),
                          TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 35)),
                        ]))
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
