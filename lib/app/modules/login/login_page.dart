import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/email.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: emailController,
              ),
              TextField(
                controller: passwordController,
              ),
              ElevatedButton(
                  onPressed: () {
                    final email = Modular.get<Email>();
                    email.email = emailController.text;
                    Modular.to.pushReplacementNamed('/');
                  },
                  child: const Text('Entrar'))
            ],
          ),
        ),
      ),
    );
  }
}
