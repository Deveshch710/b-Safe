import 'package:bsafe/components/routeplanner.dart';
import 'package:bsafe/pages/profilepage.dart';
import 'package:bsafe/pages/userhomepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../components/community/Communitymain.dart';
import '../components/fabbar.dart';
import 'complaintportalpage.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {


  int currentIndex = 0;
  List<Widget> pages = [
    Home(),
    Complaintportal(),
    community(),
    SettingPage(),

  ];
  onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        onWillPop: () async {
          SystemNavigator.pop();
          return true;
        },

        child: DefaultTabController(

          initialIndex: currentIndex,
          length: pages.length,
          child: Scaffold(

            //floating button
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton: SizedBox(
                width: 80.0, // Adjust the width to increase or decrease the size
                height: 80.0, // Adjust the height to increase or decrease the size
                child: FloatingActionButton(
                  onPressed: () {},
                  // Bottom floating bar
                  child: Center(
                    child: Text("Alert", style: TextStyle(fontSize: 20)),
                  ), // Adjust the font size as needed
                  backgroundColor: Color(0xffFF69B4),
                  foregroundColor: Color(0xff37274C),
                  elevation: 8,
                  shape: CircleBorder(),
                ),
              ),

              body: pages[currentIndex],

              bottomNavigationBar: FABBottomAppBar(

                onTabSelected: onTapped,
                items: [
                  FABBottomAppBarItem(iconData: Icons.home, text: "Home"),
                  FABBottomAppBarItem(iconData: Icons.calendar_view_week_outlined, text: "Complaint"),
                  FABBottomAppBarItem(iconData: Icons.comment_outlined, text: "Community"),
                  FABBottomAppBarItem(iconData: Icons.settings, text: "Settings" ),
                ],
              )),
        ));
  }
}