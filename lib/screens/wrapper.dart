import 'package:AutosTic/models/firebaseuser.dart';
import 'package:AutosTic/pages/home_page.dart';
import 'package:AutosTic/screens/authenticate/handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);
    if (user == null) {
      return Handler();
    } else {
      return HomePage();
    }
  }
}
