import 'package:AutosTic/screens/authenticate/handler.dart';
import 'package:AutosTic/screens/wrapper.dart';
import 'package:AutosTic/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Out extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Out();
  }
}

class _Out extends State<Out> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    final SignOut = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (() async {
          await FirebaseAuth.instance.signOut();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext) => (Wrapper()),
              ));
        }),
        child: Text(
          'Cerrar Sesión',
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gracias por su visita, vuelva pronto!'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: SignOut),
    );
  }
}
