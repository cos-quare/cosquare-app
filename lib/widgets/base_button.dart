import 'package:flutter/material.dart';

class BaseButton extends StatefulWidget {
  final double width;
  final double height;
  final String text;

  const BaseButton({this.width, this.height, this.text});

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: () {
          // Respond to button press
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            color: const Color(0xfff8f8f8),
            letterSpacing: -0.32,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff8d3cf6),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }
}
