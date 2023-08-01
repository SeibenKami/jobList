import 'package:flutter/material.dart';
import 'package:job_list/src/screens/create_listing_screen/create_ad_screen.dart';
import 'package:job_list/src/screens/favorites_screen/favorites_screen.dart';
import 'package:job_list/src/screens/home_screen/home_screen.dart';
import 'package:job_list/src/screens/profile_screen/profile_screen.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int selected = 0;
  List<Widget> _pages = [
    HomeScreen(),
    FavouritesScreen(),
    CreateAddScreen(),
    ProfileScreen(),
  ];

  onSelected(int index) {
    setState(() {
      selected = index;
    });
    return _pages[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        onTap: (value) {
          onSelected(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
