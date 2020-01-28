import 'package:fdesign/apartments_table.dart';
import 'package:fdesign/models/apartment_cell.dart';
import 'package:flutter/cupertino.dart';

class ApartmentsView extends StatelessWidget {
  static final routeName = '/';
  final List<ApartmentCell> apartmentCells = [
    ApartmentCell(
        title: 'Item A', image: 'images/1.jpg', description: '123123'),
    ApartmentCell(
        title: 'Item B', image: 'images/2.jpg', description: '123123'),
    ApartmentCell(
        title: 'Item C', image: 'images/3.jpg', description: '123123'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Outra tela",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );

    // return Center(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     mainAxisSize: MainAxisSize.max,
    //     children: <Widget>[
    //       Padding(
    //         padding:
    //             const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
    //         child: Text(
    //           'Apartments',
    //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    //         ),
    //       ),
    //       ApartmentsTable(cells: apartmentCells),
    //     ],
    //   ),
    // );
  }
}
