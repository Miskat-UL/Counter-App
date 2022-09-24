import 'package:counter_app/screens/counter1.dart';
import 'package:counter_app/screens/counter2.dart';
import 'package:counter_app/screens/counter3.dart';

import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _Bottombar();
}

class _Bottombar extends State<Bottombar> {
  int _page = 0;
  final PageStorageBucket bucket = PageStorageBucket();

  final List<Widget> pages = const [
    CounterOne(
      key: PageStorageKey('pageOne'),
    ),
    CounterTwo(
      key: PageStorageKey('pageTwo'),
    ),
    CounterThree(
      key: PageStorageKey('pageThree'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: pages[_page],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color(0XFF242157),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: _page == 0 ? Colors.white : Colors.grey,
            ),
            label: "Counter1",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt_outlined,
              color: _page == 1 ? Colors.white : Colors.grey,
              size: 27,
            ),
            label: "Counter2",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_reaction,
              color: _page == 2 ? Colors.white : Colors.grey,
            ),
            label: "Counter3",
          ),
        ],
        onTap: (int index) => setState(() => _page = index),
      ),
    );
  }
}
