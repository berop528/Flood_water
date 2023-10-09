import 'package:flood_waterapp/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primaryContainer: greyTextColor1 ,
        onError:  error
      ),
      textTheme: base.textTheme.copyWith(
        headlineLarge: GoogleFonts.ibmPlexSansThai(
          textStyle: base.textTheme.headlineLarge!.copyWith(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          //  color: whiteTextColor3,
          ),
        ),
        headlineMedium: GoogleFonts.ibmPlexSansThai(
          textStyle: base.textTheme.headlineMedium!.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          //  color: whiteTextColor3,
          ),

          // คุณสามารถเพิ่มรูปแบบตัวอักษรอื่น ๆ ใน textTheme ตามที่คุณต้องการ
        ),
       headlineSmall: GoogleFonts.ibmPlexSansThai(
          textStyle: base.textTheme.headlineSmall!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          //  color: whiteTextColor3,
          ),

          // คุณสามารถเพิ่มรูปแบบตัวอักษรอื่น ๆ ใน textTheme ตามที่คุณต้องการ
        ),
         bodyLarge: GoogleFonts.ibmPlexSansThai(
          textStyle: base.textTheme.bodyLarge!.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          //  color: whiteTextColor3,
          ),
          ),
        bodyMedium: GoogleFonts.ibmPlexSansThai(
          textStyle: base.textTheme.bodyMedium!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          //  color: whiteTextColor3,
          ),
        ),
        bodySmall: GoogleFonts.ibmPlexSansThai(
          textStyle: base.textTheme.bodySmall!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          //  color: whiteTextColor3,
          ),
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
