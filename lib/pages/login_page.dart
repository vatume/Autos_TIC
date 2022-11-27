import 'package:flutter/material.dart';
import 'package:midiarioapp/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Autos_TIC',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext) => const HomePage()));}, child: const Text('Iniciar Sesión')),
          )
        ],
      ),
    );
  }
}
