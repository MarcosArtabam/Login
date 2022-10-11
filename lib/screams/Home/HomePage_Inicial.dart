import 'package:flutter/material.dart';

class HomePage_Inicial extends StatefulWidget {
  const HomePage_Inicial({super.key});

  @override
  State<HomePage_Inicial> createState() => _HomePage_InicialState();
}

class _HomePage_InicialState extends State<HomePage_Inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Logado na conta!')),
    );
  }
}
