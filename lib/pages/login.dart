import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Loginscreen();
}

class _Loginscreen extends State<Login> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Login Page"),
      centerTitle: true,
    ),);
  }
}
