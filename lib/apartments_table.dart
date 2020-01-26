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
      ),
    );
  }

  Widget _buildCards(BuildContext context, int index) {
    ApartmentCell _cell = widget.cells[index];

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        border: BorderDirectional(
          top: BorderSide(
            width: 0.2,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _cell.title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    _cell.description,
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
