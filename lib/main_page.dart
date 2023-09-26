import 'package:flutter/material.dart';
import 'package:flutter_task/check_page.dart';
import 'package:flutter_task/list_page.dart';
import 'package:flutter_task/radio_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  List<Widget> pageOptions = <Widget>[
    const MaterialApp(home: ListPage()),
    const MaterialApp(home: CheckPage()),
    const MaterialApp(home: RadioPage()),
  ];

  void tapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageOptions.elementAt(currentPageIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined),
            label: 'Check',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_checked_outlined),
            label: 'Radio',
          ),
        ],
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.indigo,
        onTap: tapped,
      ),
    );
  }
}
