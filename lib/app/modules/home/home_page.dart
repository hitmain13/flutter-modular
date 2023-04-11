import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/email.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final userEmail = Modular.get<Email>().email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Você esta na Home Page!'),
            Text(userEmail),
            ElevatedButton(
                onPressed: () {
                  Modular.to.pushReplacementNamed('/login');
                },
                child: const Text('Sair'))
          ],
        ),
      ),
    );
  }
}
