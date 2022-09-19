import 'package:flutter/material.dart';

class BaseTextField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  const BaseTextField({this.hintText, this.isPassword});

  @override
  State<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  bool isEnableSuggestions = true;
  bool isAutoCorrect = true;
  bool isObscured = false;

  @override
  Widget build(BuildContext context) {
    if (widget.isPassword) {
      isEnableSuggestions = false;
      isAutoCorrect = false;
      isObscured = true;
    }

    return Container(
        decoration: BoxDecoration(
            color: const Color(0xff242424),
            border: Border.all(width: 1, color: const Color(0xff333333)),
            borderRadius: BorderRadius.circular(4.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
          child: TextField(
            obscureText: isObscured,
            enableSuggestions: isEnableSuggestions,
            autocorrect: isAutoCorrect,
            keyboardType: TextInputType.text,
            style: TextStyle(
                letterSpacing: -0.32,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: const Color(0xfff8f8f8)),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                letterSpacing: -0.32,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: const Color(0xff565656),
              ),
            ),
          ),
        ));
  }
}
