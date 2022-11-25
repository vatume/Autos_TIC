import 'package:flutter/material.dart';
import './home_page.dart';

class JohnDeere extends StatelessWidget {
  const JohnDeere({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('John-Deere 8R410'),
        ),
        body: Stack(alignment: Alignment.topCenter, children: <Widget>[
          Column(children: <Widget>[
            Container(
              height: 700.0,
              child: Image.asset("assets/images/John-Deere.png"),
            )
          ]),
          Expanded(
              child: Container(
                  child: DataTable(columns: [
            DataColumn(
                label: Text('Modelo',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Precio',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Tipo',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ], rows: [
            DataRow(cells: [
              DataCell(Text('2020')),
              DataCell(Text('475000 dls')),
              DataCell(Text('Tractor')),
            ]),
          ])))
        ]));
  }
}
