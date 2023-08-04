import 'package:flutter/material.dart';
import 'package:v1/utils/app_layout.dart';
import 'package:v1/utils/app_styles.dart';
import 'package:v1/widgets/app_layout_builder.dart';
import 'package:v1/widgets/column_layout.dart';
import 'package:v1/widgets/thick_container.dart';

class Ticketview extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const Ticketview({
    super.key,
    required this.ticket,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 177,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(children: [
          // showing the blue part of the ticket
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    ticket['from']['code'],
                    style: isColor == null
                        ? styles.headlinestyle3.copyWith(color: Colors.white)
                        : styles.headlinestyle3,
                  ),
                  Expanded(child: Container()),
                  const ThickContainer(
                    isColor: true,
                  ),
                  Expanded(
                      child: Stack(children: [
                    const SizedBox(
                      height: 24,
                      child: AppLayoutBuilder(sections: 6)
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.5,
                        child: Icon(
                          Icons.local_airport_rounded,
                          color: isColor == null
                              ? Colors.white
                              : const Color(0xFF8ACCF7),
                        ),
                      ),
                    ),
                  ])),
                  const ThickContainer(
                    isColor: true,
                  ),
                  Expanded(child: Container()),
                  Text(
                    ticket['to']['code'],
                    style: isColor == null
                        ? styles.headlinestyle3.copyWith(color: Colors.white)
                        : styles.headlinestyle3,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      ticket['from']['name'],
                      style: isColor == null
                          ? styles.headlinestyle4.copyWith(color: Colors.white)
                          : styles.headlinestyle4,
                    ),
                  ),
                  Text(
                    ticket['flying_time'],
                    style: isColor == null
                        ? styles.headlinestyle3.copyWith(color: Colors.white)
                        : styles.headlinestyle3,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      ticket['to']['name'],
                      style: isColor == null
                          ? styles.headlinestyle4.copyWith(color: Colors.white)
                          : styles.headlinestyle4,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              )
            ]),
          ),
          //showing orange part of the ticket
          Container(
            color: isColor == null ? Colors.orange : Colors.white,
            child: Row(children: [
              //sizedbox for small circles in white color
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: isColor == null ? Colors.grey.shade200 : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                )),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          (constraints.constrainWidth() / 10).floor(),
                          (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.grey.shade300,
                                )),
                              )),
                    );
                  },
                ),
              )),
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: isColor == null ? Colors.grey.shade200 : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                )),
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
                color: isColor == null ? Colors.orange : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(isColor == null ? 21 : 0),
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0))),
            padding:
                const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(
                    alignment: CrossAxisAlignment.start,
                    isColor: isColor,
                    firsttext: ticket['date'],
                    secondtext: 'Date',
                  ),
                  ColumnLayout(
                    alignment: CrossAxisAlignment.center,
                    isColor: isColor,
                    firsttext: ticket['departure_time'],
                    secondtext: 'Departure Time',
                  ),
                  ColumnLayout(
                    alignment: CrossAxisAlignment.end,
                    isColor: isColor,
                    firsttext: ticket['number'].toString(),
                    secondtext: 'Number',
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
