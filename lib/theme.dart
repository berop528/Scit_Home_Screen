import 'package:flutter/material.dart';
import 'package:themedemo66/color.dart';

ThemeData scitTheme() {
  final ThemeData base = ThemeData(fontFamily: 'Kanit');

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: purplePrimary,
      onPrimary: whitePure,
      secondary: yellowSecondary,
      onSecondary: blackGrey,
      background: lightPurple,
      onBackground: purplePrimary,
    ),
    textTheme: base.textTheme
        .copyWith(
          headlineLarge: base.textTheme.headlineLarge!.copyWith(
            fontSize: 48,
            fontFamily: 'Anton',
          ),
          headlineMedium: base.textTheme.headlineMedium!.copyWith(
            fontSize: 38,
            fontFamily: 'Anton',
          ),
          headlineSmall: base.textTheme.headlineSmall!.copyWith(
            fontSize: 24,
            fontFamily: 'Anton',
          ),
          bodyLarge: base.textTheme.bodyLarge!.copyWith(
            fontSize: 15,
          ),
          bodySmall: base.textTheme.bodySmall!.copyWith(
            fontFamily: 'Pacifico',
            fontSize: 13,
          ),
        )
        .apply(
          displayColor: purplePrimary,
          bodyColor: blackGrey,
        ),
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
          ),
        ),
      ),
    ),
  );
}
