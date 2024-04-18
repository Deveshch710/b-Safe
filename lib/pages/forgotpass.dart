import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgotpasspage extends StatefulWidget {
  const forgotpasspage({super.key});

  @override
  State<forgotpasspage> createState() => _forgotpasspageState();
}

class _forgotpasspageState extends State<forgotpasspage> {

  //text controller
  final emailcontroller =TextEditingController();

  @override
  void dispose(){
    emailcontroller.dispose();
    super.dispose();
  }

  Future passwordreset() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailcontroller.text.trim());
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content :Text("Reset Link Has Been Send To You On Your Email"),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Enter Your Email and we will send you reset link',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          ),

          //spacing
          SizedBox(height: 20,),

          //email field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
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

          //button
          MaterialButton(
            onPressed: passwordreset,
            child: Text("Reset Password",
            style: TextStyle(
              color: Color(0xff37274C),
            ),),
            color: Color(0xffEED4FF),
          )
        ],
      ),
    );
  }
}
