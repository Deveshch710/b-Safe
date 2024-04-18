import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  final user=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('LOGED IN: '+ user!.email!),
              MaterialButton(onPressed: (){
                FirebaseAuth.instance.signOut();
              },
                color: Colors.deepPurple,
                child: Text('Sign Out'),
              )
            ],
          ),
      ),
    );
  }
}
