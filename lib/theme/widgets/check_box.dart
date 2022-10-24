import 'package:costarica_app/theme/colors.dart';
import 'package:flutter/material.dart';

extension CheckboxExtension on Checkbox {
  backgroundColor() {
    return Container(
      decoration: BoxDecoration(color: kCosWidgetBackground),
      child: SizedBox(width: 16, height: 16, child: this),
    );
  }
}
