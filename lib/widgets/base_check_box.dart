import 'package:flutter/material.dart';

class BaseCheckBox extends StatefulWidget {
  @override
  State<BaseCheckBox> createState() => _BaseCheckBoxState();
}

class _BaseCheckBoxState extends State<BaseCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(unselectedWidgetColor: const Color(0xff333333)),
        child: Checkbox(
            value: isChecked,
            checkColor: Colors.white,
            activeColor: const Color(0xff8D3CF6),
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            }));
  }
}
