import 'package:bsafe/pages/userhomepage.dart';
import 'package:bsafe/pages/userloginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: StreamBuilder<User?>(

      //if allready login logic
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return const Home();
        }
        else{
          return Loginpage();
        }
      },
    ),
  );
  }
}
