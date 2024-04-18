import 'package:bsafe/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffEED4FF),//lavender -secondary places
        hintColor: Color(0xffEAEBFF),//white -using all places
        primaryColorDark: Color(0xff37274C),//dark purple -highlighting places
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
