import 'package:bsafe/pages/userloginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/squaretiles.dart';
import 'forgotpass.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {


  //text controller
  final emailcontroller =TextEditingController();
  final passwordcontroller =TextEditingController();
  final confirmpasscontroller= TextEditingController();

  @override
  void dispose(){
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  //Sign In  Feature
  Future SignIN() async{
    if(passwordcon()){
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text.trim(),

        );
        showDialog(context: context, builder: (context){
          return AlertDialog(
            content :Text("You have been register successfully. Relaunch the app"),
          );
        }
        );
      }
      on FirebaseAuthException catch (e){
        print(e);
        showDialog(context: context, builder: (context){
          return AlertDialog(
            content :Text(e.message.toString()),
          );
        }
        );
      }

    }
  }

  //boolen to confirm password
  bool passwordcon(){
    if(passwordcontroller.text.trim()==confirmpasscontroller.text.trim()){
      return true;
    }
    else{
      return false;
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
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  "New Warrior Here??...\nSIGN IN!",
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
              padding: const EdgeInsets.only(top: 170.0),
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

                          // set password
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
                                  controller: passwordcontroller,
                                  style: TextStyle(
                                    color: Color(0xff37274C),
                                  ),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Set Password',
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

                          // confirm password
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
                                    controller: confirmpasscontroller,
                                    style: TextStyle(
                                      color: Color(0xff37274C),
                                    ),
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Confirm Password',
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

                          //spacing
                          SizedBox(height: 20,),

                          //button
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: GestureDetector(
                              onTap: SignIN,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xff37274C),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign In",
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
                                  imagePath: "assets/usinglogo/google.png"),

                              const SizedBox(width: 30),

                              //facebook
                              squaretiles(
                                  imagePath: "assets/usinglogo/facebook.png"),

                            ],
                          ),

                          //spacing
                          SizedBox(height: 20,),

                          //new user
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Allready a User?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff37274C),
                                ),),

                              //spacing
                              SizedBox(height: 10,),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){return Loginpage();},),
                                  );
                                },
                                child: Text(
                                  " Login Now",
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
