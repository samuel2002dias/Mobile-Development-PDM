// ignore_for_file: dead_code

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: const Text("Hello World", style: TextStyle(color: Colors.black)),
        leading: BackButton(color: Colors.blue),
      ),
      body: Column(
        children: [
          Text("Username"),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          Text("Password"),
          TextField(
            controller: passwordController,
            obscureText: true,
          ),
          TextButton(
            onPressed: () {
              login();
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    print("Email: $email");
    print("Password: $password");
  }
}

