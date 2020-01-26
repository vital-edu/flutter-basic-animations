import 'package:flutter/material.dart';

class TabBarItem {
  final String text;
  final IconData icon;
  final Color color;

  TabBarItem({this.icon, this.text, this.color});
}

class AnimatedTabBar extends StatefulWidget {
  final List<TabBarItem> tabBarItems;
  final Duration animationDuration;

  AnimatedTabBar({this.tabBarItems, this.animationDuration});

  @override
  _AnimatedTabBarState createState() => _AnimatedTabBarState();
}

class _AnimatedTabBarState extends State<AnimatedTabBar> {
  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
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
      bool isSelected = i == selectedBarIndex;

      _widgets.add(GestureDetector(
        onTap: () => setState(() => selectedBarIndex = i),
        child: InkWell(
            splashColor: Colors.red,
            child: SizedBox(
              child: Row(
                children: <Widget>[
                  Icon(item.icon),
                  SizedBox(
                    width: 8,
                  ),
                  Text(isSelected ? item.text : ''),
                ],
              ),
            )),
      ));
    }

    return _widgets;
  }
}
