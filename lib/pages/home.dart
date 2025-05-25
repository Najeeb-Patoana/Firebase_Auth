import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Homescreen();
}

class _Homescreen extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: CircleAvatar()));
  }
}
