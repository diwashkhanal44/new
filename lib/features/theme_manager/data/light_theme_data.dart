import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

part 'light_theme_color_constant.dart';

class LightTheme {
  final _switchTheme = SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith((states) => kPrimaryColorLight),
    overlayColor:
        MaterialStateProperty.resolveWith((states) => complementaryColor),
    trackColor: MaterialStateProperty.resolveWith((states) => Colors.green),
  );

  final _appBarTheme = AppBarTheme(
      color: kPrimaryColorLight.withOpacity(.98),
      shadowColor: Colors.transparent,
      foregroundColor: Colors.white,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: kPrimaryColorLight.withOpacity(.98),
      ));

  final _textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      enableFeedback: true,
      padding: MaterialStateProperty.resolveWith(
          (states) => EdgeInsets.symmetric(horizontal: 10)),
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((states) => colorBlack),
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
    bodyText1: TextStyle(color: colorWhite),
    bodyText2: TextStyle(color: complementaryColor),
    caption: TextStyle(color: complementaryColor),
    button: TextStyle(color: complementaryColor),
    overline: TextStyle(color: complementaryColor),
  );

  final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor:
          MaterialStateProperty.resolveWith((states) => complementaryColor),
      shape: MaterialStateProperty.resolveWith(
        (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      backgroundColor:
          MaterialStateProperty.resolveWith((states) => Color(0xfff57a00)),
    ),
  );

  final _cardTheme = CardTheme(
    elevation: 0,
    color: Colors.grey.shade100,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );

  final _bottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: kAccentColorLight,
    unselectedItemColor: complementaryColor,
    selectedItemColor: kPrimaryColorLight,
  );
  final _tabBarTheme = TabBarTheme(
    labelColor: colorBlack,
    unselectedLabelColor: colorBlack,
  );

  final _iconTheme = IconThemeData(color: complementaryColor);
  final _floatingActionButtonTheme = FloatingActionButtonThemeData(
      backgroundColor: kPrimaryColorLight, foregroundColor: complementaryColor);

  final _checkboxThemeData = CheckboxThemeData(
      side: BorderSide(color: kPrimaryColorLight),
      overlayColor:
          MaterialStateProperty.resolveWith((states) => kPrimaryColorLight),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: kPrimaryColorLight),
          borderRadius: BorderRadius.circular(4)),
      fillColor:
          MaterialStateProperty.resolveWith((states) => Colors.transparent),
      checkColor:
          MaterialStateProperty.resolveWith((states) => kPrimaryColorLight));

  ThemeData call() {
    return ThemeData.light().copyWith(
      primaryColor: kPrimaryColorLight,
      switchTheme: _switchTheme,
      iconTheme: _iconTheme,
      primaryIconTheme: _iconTheme,
      accentIconTheme: _iconTheme,
      tabBarTheme: _tabBarTheme,
      accentColor: kAccentColorLight,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      cardTheme: _cardTheme,
      scaffoldBackgroundColor: scaffoldColorLight,
      floatingActionButtonTheme: _floatingActionButtonTheme,
      appBarTheme: _appBarTheme,
      textButtonTheme: _textButtonTheme,
      textTheme: _textTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      checkboxTheme: _checkboxThemeData,
    );
  }
}
