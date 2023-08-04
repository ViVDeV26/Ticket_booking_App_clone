// ignore_for_file: non_constant_identifier_names, unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors, unused_import, depend_on_referenced_packages

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v1/screens/ticket_view.dart';
import 'package:v1/utils/app_info_list.dart';
import 'package:v1/utils/app_layout.dart';
import 'package:v1/utils/app_styles.dart';
import 'package:v1/widgets/App_ticket_tabs.dart';
import 'package:v1/widgets/app_layout_builder.dart';
import 'package:v1/widgets/column_layout.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              const Gap(40),
              Text(
                'Tickets',
                style: styles.headlinestyle1,
              ),
              const Gap(40),
              const Apptickettabs(firsttab: 'Upcoming', secondtab: 'Previous'),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: Ticketview(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firsttext: 'Flutter DB',
                          secondtext: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        ColumnLayout(
                          firsttext: '5221468856',
                          secondtext: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firsttext: '167946 794319546',
                          secondtext: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        ColumnLayout(
                          firsttext: 'B2SG28',
                          secondtext: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2446',
                                  style: styles.headlinestyle3,
                                )
                              ],
                            ),
                            Gap(5),
                            Text(
                              'Payment method',
                              style: styles.headlinestyle4,
                            )
                          ],
                        ),
                        ColumnLayout(
                          firsttext: '\$249.99',
                          secondtext: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    )
                  ],
                ),
              )
              // barcode
              ,
              SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https://github.com/VivDev26',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: Ticketview(
                  ticket: ticketList[0],
                  isColor: null,
                ),
              ),
            ],
          ),
          Positioned(
            left: 22,
            top: 328,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: styles.textColor, width: 2)),
              child: CircleAvatar(maxRadius: 4,backgroundColor: styles.textColor,),
            ),
          ),
          Positioned(
            right: 22,
            top: 328,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: styles.textColor, width: 2)),
              child: CircleAvatar(maxRadius: 4,backgroundColor: styles.textColor,),
            ),
          ),
        ],
      ),
    );
  }
}
