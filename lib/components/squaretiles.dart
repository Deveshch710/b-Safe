import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class squaretiles extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;
  const squaretiles({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Image.asset(imagePath),
        height: 45,
      ),
    );
  }
}
