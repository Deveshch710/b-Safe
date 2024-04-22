import 'package:bsafe/components/quots.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({super.key});
  Function? onTap;
  int? quoteIndex;
  CustomAppBar({this.onTap, this.quoteIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        child: Text(
          sweetSayings[quoteIndex!],
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 29,fontStyle: FontStyle.italic ,fontWeight: FontWeight.w500,color: Color(0xff37274C)),
        ),
      ),
    );
  }
}