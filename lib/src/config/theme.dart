import 'package:flutter/material.dart';
import '../config/colors.dart';

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: ColorsConst.pBlack,
  secondaryHeaderColor: ColorsConst.sBlack,
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    labelStyle: TextStyle(color: ColorsConst.textPH),
    iconColor: ColorsConst.textPH,
    suffixIconColor: ColorsConst.textPH,
    contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
  ),
  buttonTheme: const ButtonThemeData(
    padding: EdgeInsets.all(5.0),
    buttonColor: ColorsConst.pBoton,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorsConst.pBoton,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      textStyle: const TextStyle(
        color: ColorsConst.black,
        fontSize: 24,
      ),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
    backgroundColor: ColorsConst.pBoton,
  )),
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);

var lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: ColorsConst.pLight,
  secondaryHeaderColor: ColorsConst.sLight,
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    labelStyle: TextStyle(color: ColorsConst.textPH),
    iconColor: ColorsConst.textPH,
    suffixIconColor: ColorsConst.textPH,
    contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
  ),
  buttonTheme: const ButtonThemeData(
    padding: EdgeInsets.all(5.0),
    buttonColor: ColorsConst.pBoton,
  ),
  filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
    backgroundColor: ColorsConst.pBoton,
  )),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorsConst.pBoton,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      textStyle: const TextStyle(
        color: ColorsConst.black,
        fontSize: 24,
      ),
    ),
  ),
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat'),
  ),
);
