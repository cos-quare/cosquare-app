import 'package:cosquare_app/theme/style/colors.dart';
import 'package:flutter/material.dart';

extension CheckboxExtension on Checkbox {
  backgroundColor() {
    return Container(
      decoration: BoxDecoration(color: kCosGray800),
      child: SizedBox(width: 16, height: 16, child: this),
    );
  }
}
