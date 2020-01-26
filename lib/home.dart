import 'package:fdesign/apartments_table.dart';
import 'package:fdesign/models/apartment_cell.dart';
import 'package:fdesign/models/tab_bar_item.dart';
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

  final List<ApartmentCell> apartmentCells = [
    ApartmentCell(
        title: 'Item A', image: 'images/1.jpg', description: '123123'),
    ApartmentCell(
        title: 'Item B', image: 'images/2.jpg', description: '123123'),
    ApartmentCell(
        title: 'Item C', image: 'images/3.jpg', description: '123123'),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 20.0),
                child: Text(
                  'Apartments',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              ApartmentsTable(cells: widget.apartmentCells),
            ],
          ),
        ),
        color: Colors.white,
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
