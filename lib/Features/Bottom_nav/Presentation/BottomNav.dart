import 'package:agriguide/Core/Constants.dart';
import 'package:agriguide/Features/Chat/Presentation/Chatview.dart';
import 'package:agriguide/Features/Community/Presentation/CommunityView.dart';
import 'package:agriguide/Features/Home/Presentation/HomeView.dart';
import 'package:agriguide/Features/Profile/Presentation/ProfileView.dart';
import 'package:agriguide/Features/Services/Presentation/ServicesView.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});
  static String id = 'BottomNavBar';
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    ServicesView(),
    CommunityView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 204, 204),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Color(0xff7f7f7f),
        selectedItemColor: Kprimarycolor,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.clean_hands,
            ),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_sharp,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
