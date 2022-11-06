import 'package:costarica_app/theme/style/colors.dart';
import 'package:flutter/material.dart';

final ThemeData kCosTheme = _buildCosTheme();

ThemeData _buildCosTheme() {
  ThemeData base = ThemeData.dark();
  CustomThemeData customTheme = CustomThemeData(base);
  return base.copyWith(
    scaffoldBackgroundColor: customTheme.buildDarkColorScheme.background, // ISSUE
    appBarTheme: customTheme.buildCosAppBarTheme,
    colorScheme: customTheme.buildDarkColorScheme,
    textTheme: customTheme.buildCosTextTheme,
    textSelectionTheme: customTheme.buildTextSelectionTheme,
    inputDecorationTheme: customTheme.buildInputDecorationTheme,
    checkboxTheme: customTheme.buildCosCheckBoxTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(Size.infinite.width, 50))),
    ),
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
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: kCosGray025,
            letterSpacing: -0.32,
          ),
          headline6: baseTextTheme.headline6?.copyWith(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: kCosGray025,
            letterSpacing: -0.32,
          ),
          bodyText1: baseTextTheme.bodyText1?.copyWith(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: kCosGray025,
            height: 1.5,
            letterSpacing: -0.32,
          ),
          bodyText2: baseTextTheme.bodyText2?.copyWith(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: kCosGray025,
            letterSpacing: -0.32,
          ),
          button: baseTextTheme.button?.copyWith(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            color: kCosGray025,
            letterSpacing: -0.32,
          ),
        )
        .apply(
          fontFamily: kDefaultFont,
          displayColor: kCosGray025,
          bodyColor: kCosGray025,
        );
  }

  AppBarTheme get buildCosAppBarTheme {
    return const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    );
  }

  InputDecorationTheme get buildInputDecorationTheme {
    return const InputDecorationTheme(
      hintStyle: TextStyle(color: kCosGray600),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosGray700),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosGray700),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosGray700),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosError),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        borderSide: BorderSide(color: kCosGray500),
      ),
      suffixIconColor: kCosGray500,
      suffixStyle: TextStyle(color: kCosGray025),
      filled: true,
      fillColor: kCosGray800,
      floatingLabelStyle: TextStyle(color: kCosGray025),
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
          onPrimary: kCosGray025,
          secondary: kCosGray025,
          error: kCosError,
        );
  }

  CheckboxThemeData get buildCosCheckBoxTheme {
    return const CheckboxThemeData().copyWith(
      side: BorderSide(color: kCosGray700, width: 1),
      fillColor: MaterialStateProperty.all(kCosPurple500),
      checkColor: MaterialStateProperty.all(kCosGray025),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
