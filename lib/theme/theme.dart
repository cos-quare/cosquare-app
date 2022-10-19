import 'package:costarica_app/theme/colors.dart';
import 'package:flutter/material.dart';

final ThemeData kCosTheme = _buildCosTheme();

ThemeData _buildCosTheme() {
  ThemeData base = ThemeData.dark();
  CustomThemeData customTheme = CustomThemeData(base);
  return base.copyWith(
    scaffoldBackgroundColor: customTheme.buildDarkColorScheme.background, // ISSUE
    colorScheme: customTheme.buildDarkColorScheme,
    textTheme: customTheme.buildCosTextTheme,
    textSelectionTheme: customTheme.buildTextSelectionTheme,
    inputDecorationTheme: customTheme.buildInputDecorationTheme,
    checkboxTheme: customTheme.buildCosCheckBoxTheme,
  );
}

class CustomThemeData {
  final ThemeData base;
  static const kDefaultFont = 'Pretendard';

  CustomThemeData(this.base);
  TextTheme get buildCosTextTheme {
    TextTheme baseTextTheme = this.base.textTheme;
    return base.textTheme
        .copyWith(
          headline5: baseTextTheme.headline5?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          headline6: baseTextTheme.headline6?.copyWith(
            fontSize: 18.0,
          ),
          caption: baseTextTheme.caption?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 19.0,
          ),
          bodyText2: baseTextTheme.bodyText2?.copyWith(
            fontSize: 15.0,
          ),
          button: baseTextTheme.button?.copyWith(
            fontSize: 15.0,
          ),
        )
        .apply(
          fontFamily: kDefaultFont,
          displayColor: kCosTextActive,
          bodyColor: kCosTextActive,
        );
  }

  InputDecorationTheme get buildInputDecorationTheme {
    return const InputDecorationTheme(
      hintStyle: TextStyle(color: kCosTextDisable),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosWidgetBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosWidgetBorder),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosWidgetBorder),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosErrorRed),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosTextActive),
      ),
      suffixStyle: TextStyle(color: kCosTextActive),
      filled: true,
      fillColor: kCosWidgetBackground,
      floatingLabelStyle: TextStyle(color: kCosTextActive),
    );
  }

  TextSelectionThemeData get buildTextSelectionTheme {
    return const TextSelectionThemeData(
      selectionColor: kCosPurple500,
    );
  }

  ColorScheme get buildDarkColorScheme {
    return ThemeData.dark().colorScheme.copyWith(
          background: Colors.black,
          primary: kCosPurple500,
          onPrimary: kCosTextActive,
          secondary: kCosTextActive,
          error: kCosErrorRed,
        );
  }

  CheckboxThemeData get buildCosCheckBoxTheme {
    return const CheckboxThemeData().copyWith(
      side: BorderSide(color: kCosWidgetBorder, width: 1),
      fillColor: MaterialStateProperty.all(kCosPurple500),
      checkColor: MaterialStateProperty.all(kCosTextActive),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
