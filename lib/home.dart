import 'package:fdesign/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:fdesign/animated_tab_bar.dart';

class Home extends StatefulWidget {
  final List<TabBarItem> tabBarItems = [
    TabBarItem(
      icon: Icons.home,
      text: 'Início',
      color: Colors.redAccent,
    ),
    TabBarItem(
      icon: Icons.hotel,
      text: 'Apartamentos',
      color: Colors.blueAccent,
    ),
  ];

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        child: Center(
          child: Text('Esse é o ínicio'),
        ),
        color: widget.tabBarItems[selectedTabBarIndex].color,
      ),
      bottomNavigationBar: AnimatedTabBar(
        onTap: (int index) {
          setState(() {
            selectedTabBarIndex = index;
          });
        },
        tabBarItems: widget.tabBarItems,
        animationDuration: const Duration(milliseconds: 400),
      ),
    );
  }
}
