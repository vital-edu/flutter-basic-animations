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
    return Expanded(
      child: ListView.builder(
        itemBuilder: _buildCards,
        itemCount: widget.cells.length,
        padding: const EdgeInsets.all(8.0),
      ),
    );
  }

  Widget _buildCards(BuildContext context, int index) {
    ApartmentCell _cell = widget.cells[index];

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(_cell.image),
                fit: BoxFit.fitHeight,
              ),
              color: Colors.transparent,
            ),
            height: 200,
            width: 150,
          ),
          Text(_cell.description),
          Text(_cell.title),
        ],
      ),
    );
  }
}
