import 'package:bsafe/pages/usersignuppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/services/googleauth.dart';
import '../components/squaretiles.dart';
import 'forgotpass.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  //text controller
  final emailcontroller =TextEditingController();
  final passwordcontroller =TextEditingController();

  //Login Feature
  Future<void> LogIN() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content :Text("You have been logged in successfully. Relaunch the app"),
        );
      }
      );

    }
    on FirebaseAuthException catch (e) {
      print(e);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content :Text(e.message.toString()),
        );
      }
      );
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [

            //having all the background part in it
            Container(

              //background color
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xffEED4FF),
                      Color(0xff37274C),
                    ]
                ),
              ),

              //msg at background(logo in future)
              child: Padding(
                padding: EdgeInsets.only(top: 100.0, left: 22),
                child: Text(
                  "Hey Fighter...\nLOG IN!",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff37274C),
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            ),

            //having the front part in it
            Padding(

              //decoration of white part
              padding: const EdgeInsets.only(top: 250.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Color(0xffEAEBFF),
                ),
                height: double.infinity,
                width: double.infinity,

                //storing the written part
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          //e-mail
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffEED4FF),
                                border: Border.all(color: Color(0xff37274C)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: TextField(
                                  controller: emailcontroller,
                                  style: TextStyle(
                                    color: Color(0xff37274C),
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email Id',
                                    hintStyle: TextStyle(
                                      color: Color(0xff37274C)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //spacing
                          SizedBox(height: 20,),

                          //password
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context){
                                          return forgotpasspage();
                                        },
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffEED4FF),
                                  border: Border.all(color: Color(0xff37274C)),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: TextField(
                                    controller: passwordcontroller,
                                    style: TextStyle(
                                      color: Color(0xff37274C),
                                    ),
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                          color: Color(0xff37274C)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //spacing
                          SizedBox(height: 20,),

                          //forgot password
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){return forgotpasspage();},),
                                );
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color(0xff37274C),
                                ),

                              ),
                            ),
                          ),

                          //spacing
                          SizedBox(height: 20,),

                          //button
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: GestureDetector(
                              onTap: LogIN,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Color(0xff37274C),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Center(
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(
                                      color: Color(0xffEED4FF),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //spacing
                          SizedBox(height: 20,),

                          //divider
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.blueGrey,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text('Or Continue With',
                                  style: TextStyle(color: Colors.grey[700]),),
                              ),

                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.blueGrey,
                                ),
                              )
                            ],
                          ),

                          //spacing
                          SizedBox(height: 20,),

                          //Logo of other options
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //google
                              squaretiles(
                                  onTap: () =>AuthServices().signInGoogleServices(),
                                  imagePath: "assets/usinglogo/google.png"),

                              const SizedBox(width: 30),

                              //facebook
                              squaretiles(
                                  imagePath: "assets/usinglogo/facebook.png", onTap: () {  },),

                            ],
                          ),

                          //spacing
                          SizedBox(height: 80,),

                          //new user
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "New User?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff37274C),
                                ),),

                              //spacing
                              SizedBox(height: 10,),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){return signup();},),
                                  );
                                },
                                child: Text(
                                  " Register Now",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                ),

              ),
            ),

          ],
        )
    );
  }
}
