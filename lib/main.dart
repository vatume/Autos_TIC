import 'package:flutter/material.dart';
import 'package:AutosTic/models/firebaseuser.dart';
import 'package:AutosTic/screens/wrapper.dart';
import 'package:AutosTic/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AutosApp());
}

class AutosApp extends StatefulWidget {
  const AutosApp({Key? key}) : super(key: key);
  @override
  State<AutosApp> createState() => _AutosAppState();
}

class _AutosAppState extends State<AutosApp> {
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
    return StreamProvider<FirebaseUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.black,
            buttonTheme: ButtonThemeData(
                buttonColor: Colors.black,
                textTheme: ButtonTextTheme.primary,
                colorScheme: Theme.of(context)
                    .colorScheme
                    .copyWith(secondary: Colors.white)),
            fontFamily: 'Georgia',
            textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
              headline2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            )),
        home: Wrapper(),
      ),
    );
  }
}
