import 'package:flutter/material.dart';
import 'package:midiarioapp/pages/home_page.dart';

void main() {
  runApp(const DiarioApp());
}

const List<Color> colorOptions = [
  Colors.pink,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.teal,
  Colors.green,
];

class DiarioApp extends StatefulWidget {
  const DiarioApp({Key? key}) : super(key: key);
  @override
  State<DiarioApp> createState() => _DiarioAppState();
}

class _DiarioAppState extends State<DiarioApp> {
  var useLightMode = false;
  int colorSelected = 5;

  Color colorscheme = Colors.green;

  void onColorSelected(int value) {
    setState(() {
      colorSelected = value;
      colorscheme = colorOptions[colorSelected];
    });
  }

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
      title: "Misión TIC",
      home: HomePage(
        onLightMode: onLightMode,
        onSelectedColor: onColorSelected,
        useLightMode: useLightMode,
        colorSelected: colorSelected,
        colorScheme: colorscheme,
      ),
    );
  }
}
