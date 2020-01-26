import 'package:flutter/material.dart';

class TabBarItem {
  final String text;
  final IconData icon;

  TabBarItem({this.icon, this.text});
}

class AnimatedTabBar extends StatefulWidget {
  final List<TabBarItem> tabBarItems;
  final Duration animationDuration;

  AnimatedTabBar({this.tabBarItems, this.animationDuration});

  @override
  _AnimatedTabBarState createState() => _AnimatedTabBarState();
}

class _AnimatedTabBarState extends State<AnimatedTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
