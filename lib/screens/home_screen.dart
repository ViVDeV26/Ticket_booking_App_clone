import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:v1/screens/hotel_screen.dart';
import 'package:v1/screens/ticket_view.dart';
import 'package:v1/utils/app_info_list.dart';
import 'package:v1/utils/app_styles.dart';
import 'package:v1/widgets/double_text_widget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Evening',
                          style: styles.headlinestyle3,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Book Tickets',
                          style: styles.headlinestyle1,
                        ),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amberAccent,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/img_1.png'))))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text(
                        'Search',
                        style: styles.headlinestyle4,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const DoubleTextWidget(
                    bigText: 'Upcoming flights', smallText: 'View all'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) => Ticketview(ticket: singleTicket))
                  .toList(),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          const SizedBox(
            height: 15,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child:
                    DoubleTextWidget(bigText: 'Hotels', smallText: 'View all')),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList
                  .map((singlehotel) => HotelScreen(hotel: singlehotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
