import 'package:agriguide/Core/Constants.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agri Guide '),
      ),
      backgroundColor: Color.fromARGB(255, 206, 204, 204),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Kprimarycolor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: 'Community',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_2_sharp),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[Container(), Container(), Container()][currentPageIndex],
    );
  }
}
