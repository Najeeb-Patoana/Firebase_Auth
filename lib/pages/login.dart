import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Loginscreen();
}

class _Loginscreen extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(),
        child: Form(
          key: _formkey,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(label: Text("Enter the Email")),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(labelText: "Enter the Password"),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text("Submit")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
