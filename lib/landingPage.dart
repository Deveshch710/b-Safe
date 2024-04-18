import 'package:bsafe/pages/userloginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class landingpage extends StatelessWidget {
  const landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        //background color
        color: Color(0xffEED4FF),

        //height define in such a way that it take the size of the screen
        height: MediaQuery.of(context).size.height, //height of container
        width: MediaQuery.of(context).size.width, //width of container

        //main conatiner having all elements
        child:  SafeArea(
          child: Column(
            children: [

              //padding from above
              SizedBox(
                height: 70,
              ),

              //text written
              Text(
                "Welcome To b SAFE",
                style: TextStyle(
                  color: Color(0xff37274C),
                  fontSize: 35,
                  fontWeight: FontWeight.w800
                ),
              ),

              //padding between the both of the query
              SizedBox(
                height: MediaQuery.of(context).size.height/8,
              ),

              //logo of the app
              Image.asset(
                "assets/app_logo/bSafe.png",
                height: 200,
                width: 200,
              ),

              //padding between the both of the query
              SizedBox(
                height: MediaQuery.of(context).size.height/9,
              ),

              //text written
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Color(0xff37274C),
                        fontSize: 18,

                      ),
                      children: [
                        TextSpan(
                          text: "Welcome to the app which make you feel safe.",
                        ),
                        TextSpan(
                            text: " Agree to Terms and Conditions",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          )
                        ),
                      ],
                    )
                ),
              ),

              //padding between the both of the query
              SizedBox(
                height: MediaQuery.of(context).size.height/25,
              ),

              //button for user
              InkWell(
                //functionality
                onTap: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder) =>Loginpage()), (route) => false);
                },

                //cosmetics
                child: Container(
                  width: MediaQuery.of(context).size.width-110,
                  height: 50,
                  child: Card(
                    margin: EdgeInsets.all(0),
                    elevation: 8,
                    color: Color(0xffEAEBFF),
                    child: Center(
                        child: Text(
                          "Continue To The Safety",
                          style: TextStyle(
                              color: Color(0xff37274C),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,

                          ) ,
                        ),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),


      ),

    );
  }
}
