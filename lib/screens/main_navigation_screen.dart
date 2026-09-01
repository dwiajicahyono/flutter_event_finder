import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import './menu_screens/home_screen.dart';
import './menu_screens/explore_screen.dart';
import './menu_screens/favourite_screen.dart';
import './menu_screens/ticket_screen.dart';
import './menu_screens/profile_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    ExploreScreen(),
    FavouriteScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Color(0xff7459E4),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          items: [
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.search),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.heart),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.ticket),
              label: 'Ticket',
            ),
            BottomNavigationBarItem(
              icon: Icon(LucideIcons.circleUser),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
