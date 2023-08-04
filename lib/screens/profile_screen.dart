// ignore_for_file: sort_child_properties_last, avoid_print, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v1/utils/app_styles.dart';
import 'package:v1/widgets/app_layout_builder.dart';
import 'package:v1/widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: styles.headlinestyle1,
                  ),
                  const Gap(2),
                  Text('New York',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFFEF4F3)),
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        print('You are tapped');
                      },
                      child: Text(
                        'Edit',
                        style: styles.textStyle.copyWith(
                            color: styles.primarycolor,
                            fontWeight: FontWeight.w300),
                      ))
                ],
              )
            ],
          ),
          const Gap(40),
          Divider(
            color: Colors.grey.shade300,
          ),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: styles.primarycolor,
                    borderRadius: BorderRadius.circular(18)),
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
                          width: 18, color: const Color(0xFF264C02))),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: styles.primarycolor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    const Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You have got a new award',
                          style: styles.headlinestyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You have 95 flights this year',
                          style: styles.headlinestyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.9)),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(25),
          Text(
            'Accumulated miles',
            style: styles.headlinestyle2,
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: styles.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1)
                ]),
            child: Column(
              children: [
                const Gap(15),
                Text(
                  '127946',
                  style: TextStyle(
                      fontSize: 45,
                      color: styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: styles.headlinestyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '11 june 2022',
                      style: styles.headlinestyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const Gap(4),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const Gap(4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsttext: '23 042',
                      secondtext: 'Miles',
                      isColor: false,
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firsttext: 'Airlines CO',
                      secondtext: 'Recieved from',
                      isColor: false,
                    ),
                  ],
                ),
                const Gap(12),
                const AppLayoutBuilder(
                  sections: 12,
                  isColor: false,
                ),
                const Gap(12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsttext: '24',
                      secondtext: 'Miles',
                      isColor: false,
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firsttext: 'McDonalds',
                      secondtext: 'Recieved from',
                      isColor: false,
                    ),
                  ],
                ),
                const Gap(12),
                const AppLayoutBuilder(
                  sections: 12,
                  isColor: false,
                ),
                const Gap(12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firsttext: '24 459',
                      secondtext: 'Miles',
                      isColor: false,
                    ),
                    ColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firsttext: 'VivDev26',
                      secondtext: 'Recieved from',
                      isColor: false,
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(25),
          InkWell(
            onTap: () {
              print('You are tapped');
            },
            child: Center(
              child: Text(
                'How to get more miles',
                style: TextStyle(
                    color: styles.primarycolor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
