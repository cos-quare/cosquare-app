import 'package:flutter/material.dart';

class BaseButton extends StatefulWidget {
  final String text;

  const BaseButton({super.key, required this.text});

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
        minimumSize: Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
