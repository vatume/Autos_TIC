import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:midiarioapp/pages/kenworth.dart';
import 'package:midiarioapp/pages/login_page.dart';
import '/pages/John-Deere.dart';
import 'Tesla.dart';
import 'package:midiarioapp/pages/home_page.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});


  AppBar createAppBar(BuildContext, context) {
    return AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
            icon: const Icon(Icons.arrow_left_rounded), onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext) => (LoginPage())),

          );
        }
        ),
        title: const Text("Gestion de Vehiculos",
          style: TextStyle(fontSize: 22, color: Colors.black),),
        actions: [
          PopupMenuButton<int>(
              icon: const Icon(Icons.menu),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              itemBuilder: (context) =>
              [
                PopupMenuItem(
                    value: 1,
                    child:
                    Row(
                      children: [
                        Icon(Icons.star),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Ofertas Especiales!")
                      ],
                    )),
                PopupMenuItem(
                  value: 2,
                  child:
                  Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(
                        width: 10,
                      ),
                      Text("About")
                    ],
                  ),
                ),
              ])
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: <Widget>[
              SizedBox(height: 50),
              Text(
                'Escoja un Vehiculo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.yellow.shade900,
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext) => (Tesla()),
                        ));
                  },
                  child: Container(
                      color: Colors.amberAccent.shade200,
                      height: 120,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 90.0,
                              width: 110.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/tesla.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  Text('Tesla',
                                      style: TextStyle(color: Colors.black,
                                          fontSize: 20)),
                                  Text('Vehiculo Electrico',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ]))),
              SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext) => (Kenworth()),
                        ));
                  },
                  child: Container(
                      color: Colors.amberAccent.shade200,
                      height: 120,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 90.0,
                              width: 110.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/kenworth.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              child:
                              Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    Text('Kenworth',
                                        style: TextStyle(color: Colors.black,
                                            fontSize: 20)),
                                    Text('Camión',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ]),
                            )
                          ]))),
              SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext) => (JohnDeere()),
                        ));
                  },
                  child: Container(
                      color: Colors.amberAccent.shade200,
                      height: 120,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80.0,
                              width: 110.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/John-Deere.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              child:
                              Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly,
                                  children: [
                                    Text('John-Deere',
                                        style: TextStyle(color: Colors.black,
                                            fontSize: 20)),
                                    Text('Tractor',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ]),
                            )
                          ]))),
            ]));
  }
}
