import 'package:flutter/material.dart';
import 'package:dellhub/screens/Home/Index.dart';
import 'package:dellhub/screens/Home/Rewards.dart';

class HomeRouter extends StatefulWidget {
  const HomeRouter({super.key});

  @override
  State<HomeRouter> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomeRouter> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static final _widgetOptions = [
    const HomeScreen(),
    const RewardScreen(),
    const Text(
      'Create',
      style: optionStyle,
    ),
    const Text(
      'Projects',
      style: optionStyle,
    ),
    Center(
      child: Column(
        children: [
          const Text(
            'Profile',
            style: optionStyle,
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/login');
              },
              child: const Text("Sign out"))
        ],
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Create'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_outlined), label: 'Projects'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0.0,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xff0001FC),
        unselectedItemColor: Colors.grey.shade800,
        unselectedLabelStyle: TextStyle(color: Colors.grey.shade800),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
