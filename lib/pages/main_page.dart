import 'package:flutter/material.dart';
import 'package:test3/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Widget> _pages = <Widget> [
   const HomePage(),
   const HomePage(),
   const HomePage(),
   const HomePage(),
   const HomePage(),
  ];
  int _selectedIndex=0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 84,
        child: BottomNavigationBar(items: const [
           BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/home.png')),
          label: 'Home',
        ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/market.png')),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/create.png')),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/wishlist.png')),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/account.png')),
            label: 'Account',
          ),

        ],onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          enableFeedback: false,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed, iconSize: 20,
        ),
      ),
    );
  }
}
