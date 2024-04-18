import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class squaretiles extends StatelessWidget {
  final String imagePath;
  const squaretiles({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Image.asset(imagePath),
      height: 45,
    );
  }
}
