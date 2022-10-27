import 'package:flutter/material.dart';
import 'dart:math' as math;

MaterialColor createPrimarySwatch(Color color) {
  final Map<int, Color> swatch = <int, Color>{};
  final int r = color.red;
  final int g = color.green;
  final int b = color.blue;
  for (final int strength in _indexPrimary) {
    final double ds = 0.5 - strength / 1000;
    swatch[strength] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  // The above gives a starting point, this tunes it a bit better, still far
  // from the real algorithm.
  swatch[50] = swatch[50]!.lighten(18);
  swatch[100] = swatch[100]!.lighten(16);
  swatch[200] = swatch[200]!.lighten(14);
  swatch[300] = swatch[300]!.lighten(10);
  swatch[400] = swatch[400]!.lighten(6);
  swatch[700] = swatch[700]!.darken(2);
  swatch[800] = swatch[800]!.darken(3);
  swatch[900] = swatch[900]!.darken(4);
  return MaterialColor(color.value, swatch);
}

const List<int> _indexPrimary = <int>[
  50,
  100,
  200,
  300,
  400,
  500,
  600,
  700,
  800,
  900,
];

extension FlexPickerColorExtensions on Color {
  /// Lightens the color with the given integer percentage amount.
  /// Defaults to 10%.
  Color lighten([final int amount = 10]) {
    if (amount <= 0) return this;
    if (amount > 100) return Colors.white;
    // HSLColor returns saturation 1 for black, we want 0 instead to be able
    // lighten black color up along the grey scale from black.
    final HSLColor hsl =
        this == const Color(0xFF000000) ? HSLColor.fromColor(this).withSaturation(0) : HSLColor.fromColor(this);
    return hsl.withLightness(math.min(1, math.max(0, hsl.lightness + amount / 100))).toColor();
  }

  /// Darkens the color with the given integer percentage amount.
  /// Defaults to 10%.
  Color darken([final int amount = 10]) {
    if (amount <= 0) return this;
    if (amount > 100) return Colors.black;
    final HSLColor hsl = HSLColor.fromColor(this);
    return hsl.withLightness(math.min(1, math.max(0, hsl.lightness - amount / 100))).toColor();
  }

  Color blend(final Color input, [final int amount = 10]) {
    // Skip blending for impossible value and return the instance color value.
    if (amount <= 0) return this;
    // Blend amounts >= 100 results in the input Color.
    if (amount >= 100) return input;
    return Color.alphaBlend(input.withAlpha(255 * amount ~/ 100), this);
  }
}
