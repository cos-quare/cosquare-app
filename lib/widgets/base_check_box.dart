import 'package:flutter/material.dart';

class BaseCheckBox extends StatefulWidget {
  @override
  State<BaseCheckBox> createState() => _BaseCheckBoxState();
}

class _BaseCheckBoxState extends State<BaseCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff242424),
          border: Border.all(width: 1, color: const Color(0xff333333)),
          borderRadius: BorderRadius.circular(2.0)),
      child: SizedBox(
          width: 16,
          height: 16,
          child: Checkbox(
              value: isChecked,
              checkColor: Colors.white,
              activeColor: const Color(0xff8D3CF6),
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              })),
    );
  }
}
