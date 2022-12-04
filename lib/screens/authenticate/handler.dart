import 'package:AutosTic/screens/authenticate/login.dart';
import 'package:AutosTic/screens/authenticate/register.dart';
import 'package:flutter/material.dart';

class Handler extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _Handler();
  }
}

class _Handler extends State<Handler> {
  bool showSignIn = true;

  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return Login(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}