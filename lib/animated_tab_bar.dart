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
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          children: _buildTabBarItems(),
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
    );
  }

  List<Widget> _buildTabBarItems() {
    List<Widget> _widgets = List();
    for (int i = 0; i < widget.tabBarItems.length; i++) {
      TabBarItem item = widget.tabBarItems[i];

      _widgets.add(Row(
        children: <Widget>[
          Icon(item.icon),
          SizedBox(
            width: 8,
          ),
          Text(item.text),
        ],
      ));
    }

    return _widgets;
  }
}
