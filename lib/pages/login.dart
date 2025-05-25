import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Loginscreen();
}

class _Loginscreen extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _email=TextEditingController();
  final TextEditingController _password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"), centerTitle: true),
      body: Form(
        key: _formkey,
      child: Container(
        height: 650,
        width: 330,
        color: Colors.grey,
        child: Column(
          children: [
            TextFormField(controller: _email,),
            TextFormField(controller: _password,),
          
          ]
          )
          )
          ),
    );
  }
}
