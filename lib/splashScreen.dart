import 'package:bsafe/landingPage.dart';
import 'package:bsafe/main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bsafe/pages/bottompage.dart';
import 'package:bsafe/pages/userhomepage.dart';
import 'package:bsafe/pages/userloginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: LottieBuilder.asset("assets/splashscreenAnimation/Animation - 1713201800546.json"),
              )
            ],
          ),
        ), nextScreen:  Scaffold(
      body: StreamBuilder<User?>(

        //if allready login logic
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return BottomPage();
          }
          else{
            return landingpage();
          }
        },
      ),
    ),
      splashIconSize: 400,
      backgroundColor: Color.fromARGB(255, 238, 212, 255),
    );
  }
}
