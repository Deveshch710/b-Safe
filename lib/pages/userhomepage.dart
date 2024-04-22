import 'dart:math';
import 'package:bsafe/components/app_bar.dart';
import 'package:bsafe/components/carouls.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/emrgencycontactcard.dart';
import '../components/location.dart';
import '../components/servicesnearyou.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final user=FirebaseAuth.instance.currentUser;

  //indexing start
  int qIndex = 0;

  //random quot index genration
  getRandomQuoate(){
    Random random=Random();

    setState(() {
      qIndex =random.nextInt(6);
    });
  }

  //everytime opening new index
  @override
  void initstate(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffEED4FF),

      body: SafeArea(

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
            
              child: Column(
                children: [
                  SingleChildScrollView(
            
                    //custom quotes
                    child: CustomAppBar(
                      quoteIndex: qIndex,
                      onTap: (){
                        getRandomQuoate();
                      },
                    ),
                  ),
            
                  //spacing
                  SizedBox(height: 4,),

                  //locations ending
                  SafeHome(),
                  SizedBox(height: 20,),

                  //Explore
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sevices Near You",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff37274C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  servicesnearyou(),

                  //spacing
                  SizedBox(height: 20,),
            
                  //emergency contact
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Emergency Contacts",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff37274C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Emergency(),
            
                  //spacing
                  SizedBox(height: 20,),


                  //news articles link and stuff
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Safety Tips",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff37274C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomCarouel(),

                  //spacing
                  SizedBox(height: 20,),

            
            
            
                ],
              ),
            ),
          ),
      ),
    );
  }
}
