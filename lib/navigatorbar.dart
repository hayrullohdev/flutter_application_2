import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages1.dart';
import 'package:flutter_application_2/pages2.dart';
import 'package:flutter_application_2/pages3.dart';

class Navigator_BarPage extends StatefulWidget {
  const Navigator_BarPage({super.key});

  @override
  State<Navigator_BarPage> createState() => _Navigator_BarPageState();
}

class _Navigator_BarPageState extends State<Navigator_BarPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
   const Pages1(),
    const Pages2(),
    const Pages3(),
  ];

 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.dashboard_rounded),
            icon: Icon(Icons.space_dashboard_outlined),
            label: 'Asosiy',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.audio_file_rounded),
            icon: Icon(Icons.access_time_rounded),
            label: 'Maqsad',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.ac_unit_rounded),
            icon: Icon(Icons.account_tree),
            label: 'Maqsad',
          ),
        ],
      ),
    );
  }
}
