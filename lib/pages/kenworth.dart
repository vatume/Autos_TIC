import 'package:AutosTic/screens/home/out.dart';
import 'package:flutter/material.dart';


class Kenworth extends StatelessWidget {
  const Kenworth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('kenworth'),
        ),
        body: Stack(alignment: Alignment.topCenter, children: <Widget>[
          Column(children: <Widget>[
            Container(
              height: 700.0,
              child: Image.asset("assets/images/kenworth.png"),
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
              DataCell(Text('2016')),
              DataCell(Text('68000 dls')),
              DataCell(Text('Camión de Carga')),
            ]),
          ])))
        ]),
        floatingActionButton: FloatingActionButton.large(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext) => (Out()),
              ));
        },
        backgroundColor: Colors.white,
        child: const Text(
          'Salir',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        )
        );
  }
}
