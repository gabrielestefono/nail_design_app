import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Open Nails"),
        const Text("Vamos à sua casa"),
        Form(
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Senha"),
                ),
              ),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () => {},
              )
            ],
          ),
        )
      ],
    );
  }
}
