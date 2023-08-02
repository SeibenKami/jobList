import 'package:flutter/material.dart';
import 'package:job_list/src/constants/app_colors.dart';
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
    const HomeScreen(),
    const FavouritesScreen(),
    const CreateAddScreen(),
    const ProfileScreen(),
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
        selectedItemColor: AppColors.blue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              activeIcon: Icon(
                Icons.favorite,
              ),
              label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add_outlined),
              activeIcon: Icon(
                Icons.post_add_rounded,
              ),
              label: "Create"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
