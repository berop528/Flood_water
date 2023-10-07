import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';

ThemeData floodTheme() {
  final ThemeData base = ThemeData(fontFamily: 'IBMplex');
  return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
          primary: primaryBlue,
          onPrimary: whiteTextColor3,
          secondary: yellowSecondary,
          onSecondary: darkblueTextColor2,
          background: blueskyBackground,
          onBackground: primaryBlue,
      ),
      textTheme: base.textTheme.copyWith(
        headlineLarge: base.textTheme.headlineLarge!.copyWith(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          fontFamily: 'IBMplex',
          color: whiteTextColor3,
        ),
        headlineMedium: base.textTheme.headlineMedium!.copyWith(
            fontSize: 36, 
            fontWeight: FontWeight.bold, 
            fontFamily: 'IBMplex',
            color: primaryBlue
        ),
        headlineSmall: base.textTheme.headlineSmall!.copyWith(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            fontFamily: 'IBMplex',
            color: primaryBlue
        ),
        bodyLarge: base.textTheme.bodyLarge!.copyWith(
          fontFamily: 'IBMplex',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: base.textTheme.bodyMedium!.copyWith(
          fontFamily: 'IBMplex',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: whiteTextColor3
        ),
        bodySmall: base.textTheme.bodySmall!.copyWith(
          fontFamily: 'IBMplex',
          fontSize: 18,
        ),
      ),
      // .apply(
      //   displayColor: primaryBlue,
      //   bodyColor: darkblueTextColor2,
      // ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: const EdgeInsets.all(16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ))),
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: primaryBlue,
        indicatorColor: primaryBlue,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: primaryBlue, width: 5.0),
        ),
      ));
}
