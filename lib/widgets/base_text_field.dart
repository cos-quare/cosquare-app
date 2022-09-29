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
  Color borderColor = Color(0xff333333);
  IconButton closeIcon;
  TextEditingController textField = TextEditingController();

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
            border: Border.all(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(4.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          child: TextField(
            controller: textField,
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
              contentPadding: const EdgeInsets.only(top: 14.5, left: 16.0),
              border: InputBorder.none,
              hintText: widget.hintText,
              suffixIcon: Padding(
                  padding: const EdgeInsets.only(top: 0.0, right: 5.0),
                  child: closeIcon),
              hintStyle: TextStyle(
                letterSpacing: -0.32,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: const Color(0xff565656),
              ),
            ),
            onChanged: (text) {
              if (text.length > 0) {
                changeTextFieldStyleByFill();
                return;
              }
              changeTextFieldStyleByEmpty();
            },
          ),
        ));
  }

  void changeTextFieldStyleByFill() {
    setState(() {
      borderColor = Color(0xffF8F8F8);
      closeIcon = IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: Image.asset(
          'assets/icons/close_circle.png',
          width: 40,
          height: 40,
        ),
        onPressed: () {
          changeTextFieldStyleByEmpty();
        },
      );
    });
  }

  void changeTextFieldStyleByEmpty() {
    setState(() {
      textField.clear();
      borderColor = Color(0xff333333);
      closeIcon = null;
    });
  }
}
