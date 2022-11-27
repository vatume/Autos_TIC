import 'package:flutter/material.dart';
import 'package:midiarioapp/pages/login_page.dart';

void main() {
  runApp(const DiarioApp());
}

class DiarioApp extends StatefulWidget {
  const DiarioApp({Key? key}) : super(key: key);
  @override
  State<DiarioApp> createState() => _DiarioAppState();
}

class _DiarioAppState extends State<DiarioApp> {
  var useLightMode = false;
  int colorSelected = 5;

  Color colorscheme = Colors.green;

  void onLightMode() {
    setState(() {
      useLightMode = !useLightMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorscheme,
        brightness: useLightMode ? Brightness.light : Brightness.dark,
      ),
      title: "Autos_TIC",
      home: const LoginPage(),
    );
  }
}
