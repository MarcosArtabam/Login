import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _EmailController = TextEditingController();
  final _SenhaController = TextEditingController();

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _EmailController.text.trim(),
        password: _SenhaController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Icon(
                  Icons.stairs_sharp,
                  size: 100,
                ),
                SizedBox(height: 10),
                Text(
                  'Olá,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
                Text(
                  'bem vindo!',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 45),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 202, 202, 202)),
                      borderRadius: BorderRadius.circular(18)),
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: _EmailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 202, 202, 202)),
                      borderRadius: BorderRadius.circular(18)),
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      controller: _SenhaController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Senha',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: SignIn,
                  child: Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      //borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Esqueci a senha.'),
                      Text('Recuperar senha!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue))
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Quero me cadastrar. '),
                        Text('Criar conta!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue))
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
