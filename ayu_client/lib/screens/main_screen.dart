import 'package:ayu_client/screens/exchange_screen.dart';
import 'package:ayu_client/screens/order_screen.dart';
import 'package:ayu_client/screens/summary_screen.dart';
import 'package:flutter/material.dart';
//import 'package:drift/drift.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    OrderScreen(),
    SummaryScreen(),
    ExchangeScreen(),
    Text('data')
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Аю-клиент',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        selectedFontSize: 16,
        // unselectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.create_sharp),
            label: 'Заказать',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.summarize_outlined),
            label: 'Сводка',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload_sharp),
            label: 'Обмен',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Обмен',
          ),
        ],
        currentIndex: _selectedTab,
        onTap: onSelectedTab,
      ),
    );
  }
}
