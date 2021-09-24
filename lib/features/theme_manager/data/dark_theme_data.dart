import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

part 'dark_theme_color_constant.dart';

class DarkTheme {
  final _switchTheme = SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith((states) => kPrimaryColorDark),
    overlayColor:
        MaterialStateProperty.resolveWith((states) => complementaryColor),
    trackColor: MaterialStateProperty.resolveWith((states) => kAccentColorDark),
  );

  final _appBarTheme = AppBarTheme(
    color: kPrimaryColorDark.withOpacity(.98),
    backwardsCompatibility: false,
    shadowColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
      statusBarColor: kPrimaryColorDark.withOpacity(.98),
    ),
  );

  final _textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      enableFeedback: true,
      padding: MaterialStateProperty.resolveWith(
          (states) => EdgeInsets.symmetric(horizontal: 10)),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => complementaryColor),
    ),
  );

  final _textTheme = GoogleFonts.saralaTextTheme().copyWith(
    subtitle2: TextStyle(color: complementaryColor),
    headline6: TextStyle(color: complementaryColor),
    headline1: TextStyle(color: complementaryColor),
    headline2: TextStyle(color: complementaryColor),
    headline3: TextStyle(color: complementaryColor),
    headline4: TextStyle(color: complementaryColor),
    headline5: TextStyle(color: complementaryColor),
    subtitle1: TextStyle(color: complementaryColor),
    bodyText1: TextStyle(color: complementaryColor),
    bodyText2: TextStyle(color: complementaryColor),
    caption: TextStyle(color: complementaryColor),
    button: TextStyle(color: complementaryColor),
    overline: TextStyle(color: complementaryColor),
  );

  final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape:
          MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
      backgroundColor:
          MaterialStateProperty.resolveWith((states) => Color(0xfff57a00)),
    ),
  );

  final _bottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: kAccentColorDark,
    unselectedItemColor: complementaryColor,
    selectedItemColor: kPrimaryColorDark,
  );

  final _iconTheme = IconThemeData(color: complementaryColor);

  final _cardTheme = CardTheme(
    elevation: 0,
    color: Colors.grey.shade900,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );

  final _floatingActionButtonTheme = FloatingActionButtonThemeData(
      backgroundColor: kPrimaryColorDark, foregroundColor: colorWhite);

  final _textSelectionThemeData = TextSelectionThemeData(
    selectionColor: kAccentColorDark,
  );

  final _outlinedButtonTheme = OutlinedButtonThemeData(style: ButtonStyle());

  final _checkboxThemeData = CheckboxThemeData(
      side: BorderSide(color: kPrimaryColorDark),
      overlayColor:
          MaterialStateProperty.resolveWith((states) => kPrimaryColorDark),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: kPrimaryColorDark),
          borderRadius: BorderRadius.circular(4)),
      fillColor:
          MaterialStateProperty.resolveWith((states) => Colors.transparent),
      checkColor:
          MaterialStateProperty.resolveWith((states) => kPrimaryColorDark));

  ThemeData call() {
    return ThemeData.dark().copyWith(
        primaryColor: kPrimaryColorDark,
        scaffoldBackgroundColor: scaffoldColorDark,
        cardTheme: _cardTheme,
        textSelectionTheme: _textSelectionThemeData,
        bottomNavigationBarTheme: _bottomNavigationBarTheme,
        floatingActionButtonTheme: _floatingActionButtonTheme,
        accentColor: kAccentColorDark,
        switchTheme: _switchTheme,
        snackBarTheme: SnackBarThemeData(
          backgroundColor: kAccentColorDark,
          contentTextStyle: TextStyle(color: colorWhite),
        ),
        outlinedButtonTheme: _outlinedButtonTheme,
        appBarTheme: _appBarTheme,
        textButtonTheme: _textButtonTheme,
        textTheme: _textTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        iconTheme: _iconTheme,
        splashColor: kPrimaryColorDark.withOpacity(.2),
        checkboxTheme: _checkboxThemeData);
  }
}
