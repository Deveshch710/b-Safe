
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting",style:TextStyle(
          fontSize:40,
          fontWeight:FontWeight.w500,
          color: Color(0xff37274C),
        ),),
        leading:IconButton(
          onPressed:(){} ,
          icon: Icon(
            Icons.settings,
            color:Colors.deepPurple,
          ),
        ),
      ),
      body: Container(
          color: Color(0XFFEED4FF),
          padding: EdgeInsets.all(10),
          child:ListView(
            children: [
              SizedBox(height:40),
              Row(
                children: [
                  Icon(Icons.person,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(width: 10,),
                  Text("test1",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(width: 120,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff37274C),


                      ),

                      onPressed:(){
                        FirebaseAuth.instance.signOut();
                      }, child:Text("Log Out",style: TextStyle(color:Colors.white ),)),
                ],
              ),
              Divider(height:20,thickness: 1,),
              SizedBox(height: 10,),
              buildAccountOption(context, "Change Password"),
              SizedBox(height: 10,),
              buildContent(context, "Contact No."),
              SizedBox(height: 10,),
              buildLanguage(context, "Language"),
              SizedBox(height: 10,),
              buildOthers(context, "Others"),
              SizedBox(height: 10,),
              buildPrivacy(context, "Privacy"),




            ],
          )
      ),
    );
  }
  ElevatedButton buildAccountOption(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(padding:EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)

          ],
        ),
      ) ,
    );
  }
  ElevatedButton buildContent(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(padding:EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)

          ],
        ),
      ) ,
    );
  }
  ElevatedButton buildSocial(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(padding:EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)

          ],
        ),
      ) ,
    );
  }
  ElevatedButton buildLanguage(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(padding:EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)

          ],
        ),
      ) ,
    );
  }
  ElevatedButton buildPrivacy(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(padding:EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)

          ],
        ),
      ) ,
    );
  }
  ElevatedButton buildLogOut(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(padding:EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)

          ],
        ),
      ) ,
    );
  }
  ElevatedButton buildOthers(BuildContext context,String title){
    return ElevatedButton(
      onPressed: (){},
      child: Padding(padding:EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style:TextStyle(fontSize: 20,
                fontWeight:FontWeight.w500,
                color: Colors.grey[600]
            )),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)

          ],
        ),
      ) ,
    );
  }

}
