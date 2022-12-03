import 'package:flutter/material.dart';

class Tesla extends StatelessWidget {
  const Tesla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tesla Model S'),
        ),
        body: Stack(alignment: Alignment.topCenter, children: <Widget>[
          Column(children: <Widget>[
            Container(
              height: 700.0,
              child: Image.asset("assets/images/tesla.png"),
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
              DataCell(Text('2022')),
              DataCell(Text('12000 dls')),
              DataCell(Text('Electrico')),
            ]),
          ])))
        ]),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Text(
            'Comprar',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ));
  }
}
