import 'package:fdesign/models/apartment_cell.dart';
import 'package:flutter/material.dart';

class ApartmentsTable extends StatefulWidget {
  final List<ApartmentCell> cells;

  ApartmentsTable({this.cells});

  @override
  _CarrouselState createState() => _CarrouselState();
}

class _CarrouselState extends State<ApartmentsTable> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemBuilder: _buildCards,
        itemCount: widget.cells.length,
      ),
    );
  }

  Widget _buildCards(BuildContext context, int index) {
    ApartmentCell _cell = widget.cells[index];

    return Column(
      children: <Widget>[
        Text(_cell.title),
        Image.asset(_cell.image),
        Text(_cell.description),
      ],
    );
  }
}
