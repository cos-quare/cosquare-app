import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {
  final String hintText;
  const BaseTextField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color(0xff242424),
            border: Border.all(width: 1, color: const Color(0xff333333)),
            borderRadius: BorderRadius.circular(4.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ));
  }
}
