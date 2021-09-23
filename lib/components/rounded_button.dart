import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.title,
      required this.color,
      this.fontSize = 16.0,
      required this.onPressed,
      this.height = 42.0});

  final Color color;
  final String title;
  final void Function() onPressed;
  final double fontSize;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(16.0),
        child: MaterialButton(
          onPressed: onPressed,
          elevation: 0,
          minWidth: 250.0,
          height: height, //42.0
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
