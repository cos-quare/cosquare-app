import 'package:flutter/material.dart';

extension ElevatedButtonExtension on ElevatedButton {
  Widget h50({double width = double.infinity}) {
    return Container(
      width: width,
      height: 50,
      child: this,
    );
  }
}
