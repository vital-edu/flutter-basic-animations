import 'package:fdesign/models/tab_bar_item.dart';
import 'package:flutter/material.dart';

class AnimatedTabBar extends StatefulWidget {
  final List<TabBarItem> tabBarItems;
  final Duration animationDuration;
  final Function onTap;

  AnimatedTabBar({this.tabBarItems, this.animationDuration, this.onTap});

  @override
  _AnimatedTabBarState createState() => _AnimatedTabBarState();
}

class _AnimatedTabBarState extends State<AnimatedTabBar>
    with TickerProviderStateMixin {
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
        onTap: () => setState(() {
          selectedBarIndex = i;
          widget.onTap(selectedBarIndex);
        }),
        child: InkWell(
            splashColor: Colors.red,
            child: AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isSelected
                    ? item.color.withOpacity(0.15)
                    : Colors.transparent,
              ),
              duration: widget.animationDuration,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      item.icon,
                      color: isSelected ? item.color : Colors.black,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    AnimatedSize(
                        curve: Curves.easeInOutSine,
                        duration: widget.animationDuration,
                        vsync: this,
                        child: Text(
                          isSelected ? item.text : '',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: item.color,
                          ),
                        )),
                  ],
                ),
              ),
            )),
      ));
    }

    return _widgets;
  }
}
