import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _Signupscreen();
}

class _Signupscreen extends State<Signup> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  Future<void> _signup() async {
    var auth = FirebaseAuth.instance;

    auth.createUserWithEmailAndPassword(
      email: _email.text.trim(),
      password: _password.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Page"), centerTitle: true),
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
                ElevatedButton(onPressed: () {}, child: Text("Signup")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
