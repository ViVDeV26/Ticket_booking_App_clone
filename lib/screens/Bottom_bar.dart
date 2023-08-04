// ignore_for_file: file_names

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/rendering.dart';
import 'package:v1/screens/home_screen.dart';
import 'package:v1/screens/search_screen.dart';
import 'package:v1/screens/ticket_screen.dart';

// ignore: camel_case_types
class Bottom_bar extends StatefulWidget {
  const Bottom_bar({super.key});

  @override
  State<Bottom_bar> createState() => Bottom_barState();
}

// ignore: camel_case_types
class Bottom_barState extends State<Bottom_bar> {
  // ignore: prefer_final_fields
  int _selectedIndex = 0;
  static final List<Widget> _widgetoptions = <Widget>[
    const Homescreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text('Profile'),
  ];
  void _onItemTapped(int index) {
    // _selectedIndex = index;
    // print('${_selectedIndex}');
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text("Tickets Booking"),
      // ),
      body: Center(
        child: _widgetoptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "profile"),
        ],
      ),
    );
  }
}
