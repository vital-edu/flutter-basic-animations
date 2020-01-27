import 'package:fdesign/models/tab_bar_item.dart';
import 'package:fdesign/views/apartments_view.dart';
import 'package:fdesign/views/transitions_view.dart';
import 'package:flutter/material.dart';
import 'package:fdesign/animated_tab_bar.dart';

class Home extends StatefulWidget {
  static final routeName = '/';

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

  final List<Widget> tabs = [
    TransitionsView(),
    ApartmentsView(),
  ];

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: widget.tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.tabs.length,
      child: DefaultTabController(
        length: widget.tabs.length,
        child: Scaffold(
          body: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: widget.tabs,
          ),
          bottomNavigationBar: AnimatedTabBar(
            onTap: (int index) {
              setState(() {
                _tabController.animateTo(index,
                    duration: Duration(milliseconds: 2));
              });
            },
            tabBarItems: widget.tabBarItems,
            animationDuration: const Duration(milliseconds: 200),
          ),
        ),
      ),
    );
  }
}
