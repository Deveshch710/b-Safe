import 'package:bsafe/components/services/googleauth.dart';
import 'package:bsafe/components/squaretiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class loginpage extends StatelessWidget {
  const loginpage({super.key});

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
                  colors:[
                    Color(0xffEED4FF),
                    Color(0xff37274C),
                  ]
              ),
            ),

            //msg at background(logo in future)
            child: Padding(
              padding:  EdgeInsets.only(top: 100.0, left: 22),
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
            padding: const EdgeInsets.only(top:250.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  color: Color(0xffEAEBFF),
              ),
              height: double.infinity,
              width: double.infinity,

              //storing the written part
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,right: 18.0),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        //e-mail
                        TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.check,color: Colors.blueGrey,),
                            label: Text(
                              'Email Id',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff37274C),
                              ),
                            )
                          ),
                        ),

                        //password
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.blueGrey,),
                              label: Text(
                                'Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff37274C),
                                ),
                              )
                          ),
                        ),

                        //spacing
                        SizedBox(height: 20,),

                        //forgot password
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xff37274C),
                            ),

                          ),
                        ),

                        //spacing
                        SizedBox(height: 20,),

                        //button
                        GestureDetector(
                          //ontapping
                          onTap: (){
                          },

                          child: Container(
                            height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [Color(0xffEED4FF),Color(0xffEED4FF)]),
                            ),
                            child: Center(
                              child: Text("Sign In",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  color: Color(0xff37274C)
                              ),),
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
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text('Or Continue With',style: TextStyle(color: Colors.grey[700]),),
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
                            squaretiles(imagePath: "assets/usinglogo/google.png",
                              onTap: () =>AuthServices().signInGoogleServices(),
                            ),

                            const SizedBox(width: 30),

                            //facebook
                            squaretiles(imagePath: "assets/usinglogo/facebook.png",
                              onTap: () {  },
                            ),

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

                            Text(
                              " Register Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
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


