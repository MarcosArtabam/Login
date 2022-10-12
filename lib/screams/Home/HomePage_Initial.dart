import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage_Initial extends StatefulWidget {
  const HomePage_Initial({super.key});

  @override
  State<HomePage_Initial> createState() => _HomePage_InitialState();
}

class _HomePage_InitialState extends State<HomePage_Initial> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Logado na conta: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(user.email!),
            ],
          ),
          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.black,
            child: Text(
              'Sair da conta',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}
