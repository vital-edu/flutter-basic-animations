import 'package:flutter/material.dart';
import 'package:fdesign/animated_tab_bar.dart';

class Home extends StatefulWidget {
  final List<TabBarItem> barItems = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Esse é o ínicio'),
        ),
        color: Colors.redAccent,
      ),
      bottomNavigationBar: AnimatedTabBar(
        tabBarItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 2000),
      ),
    );
  }
}
