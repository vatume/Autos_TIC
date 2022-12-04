import 'package:AutosTic/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:AutosTic/pages/kenworth.dart';
import 'package:AutosTic/pages/login_page.dart';
import '/pages/John-Deere.dart';
import 'Tesla.dart';
import 'package:AutosTic/services/auth.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 33, 28, 26),
            leading: IconButton(
                icon: const Icon(Icons.arrow_left_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext) => (Wrapper())),
                  );
                }),
            title: const Text(
              "Gestion de Vehiculos",
              style: TextStyle(fontSize: 22, color: Colors.white24),
            ),
            actions: [
              PopupMenuButton<int>(
                  icon: const Icon(Icons.menu),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            value: 1,
                            child: Row(
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
                          child: Row(
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
            ]),
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
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 255, 200, 0),
                      ),
                      height: 120,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 90.0,
                              width: 110.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                        .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/tesla.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Tesla',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w500,
                                        shadows: [
                                          Shadow(
                                            color: Colors.blue,
                                            blurRadius: 10.0,
                                            offset: Offset(5.0, 5.0),
                                          ),
                                          Shadow(
                                            color: Colors.red,
                                            blurRadius: 10.0,
                                            offset: Offset(-5.0, 5.0),
                                          ),
                                        ],
                                      )),
                                  Text(
                                    'Vehiculo Electrico',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  )
                                ],
                              ),
                            ),
                          ])),
                )),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext) => (Kenworth()),
                      ));
                },
                child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 255, 200, 0),
                        ),
                        height: 120,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 90.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 24, 24, 24)
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/kenworth.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              Container(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Kenworth',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 27,
                                            fontWeight: FontWeight.w500,
                                            shadows: [
                                              Shadow(
                                                color: Colors.blue,
                                                blurRadius: 10.0,
                                                offset: Offset(5.0, 5.0),
                                              ),
                                              Shadow(
                                                color: Colors.red,
                                                blurRadius: 10.0,
                                                offset: Offset(-5.0, 5.0),
                                              ),
                                            ],
                                          )),
                                      Text(
                                        'Camión de Carga',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0),
                                      )
                                    ]),
                              )
                            ])))),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext) => (JohnDeere()),
                      ));
                },
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 255, 200, 0),
                      ),
                      height: 120,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80.0,
                              width: 110.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 24, 24, 24)
                                        .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/John-Deere.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Container(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('John-Deere',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w500,
                                          shadows: [
                                            Shadow(
                                              color: Colors.blue,
                                              blurRadius: 10.0,
                                              offset: Offset(5.0, 5.0),
                                            ),
                                            Shadow(
                                              color: Colors.red,
                                              blurRadius: 10.0,
                                              offset: Offset(-5.0, 5.0),
                                            ),
                                          ],
                                        )),
                                    Text(
                                      'Tractor Poderoso',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    )
                                  ]),
                            )
                          ])),
                )),
          ],
        ));
  }
}
