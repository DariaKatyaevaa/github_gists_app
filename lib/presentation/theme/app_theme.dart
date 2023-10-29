import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3f5F8),
        listTileTheme: ThemeData.light().listTileTheme.copyWith(
              tileColor: Colors.white,
              textColor: Colors.black,
            ),
        primaryColor: Colors.white,
        cardColor: const Color(0x71DBD5FF),
        primaryColorDark: Colors.white,
        shadowColor: const Color(0x73DAB7FF),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: const Color(0xFFF3f5F8),
              surfaceTintColor: const Color(0xFFF3f5F8),
              shadowColor: const Color(0x73DAB7FF),
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
              iconTheme: const IconThemeData(color: Colors.black),
            ),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(color: Colors.black, fontSize: 20),
              titleMedium: const TextStyle(color: Colors.black, fontSize: 18),
              titleSmall: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
              bodyMedium: const TextStyle(color: Colors.black, fontSize: 16),
              labelSmall: const TextStyle(color: Colors.black45, fontSize: 14),
              bodySmall: const TextStyle(color: Colors.black, fontSize: 14),
            ),
      );

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF414144),
        listTileTheme: ThemeData.dark().listTileTheme.copyWith(
              tileColor: const Color(0xFF55555D),
              textColor: Colors.white,
            ),
        primaryColorDark: const Color(0xFF262626),
        primaryColor: const Color(0xFF55555D),
        cardColor: const Color(0xFF262626),
        shadowColor: const Color(0xDD0D1A48),
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              backgroundColor: const Color(0xFF414144),
              surfaceTintColor: const Color(0xFF414144),
              shadowColor: const Color(0x733E2E56),
              titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
              ),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
        textTheme: ThemeData.dark().textTheme.copyWith(
              titleLarge: const TextStyle(color: Colors.white, fontSize: 20),
              titleMedium: const TextStyle(color: Colors.white, fontSize: 18),
              titleSmall: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              bodyMedium: const TextStyle(color: Colors.white, fontSize: 16),
              labelSmall: const TextStyle(color: Colors.white54, fontSize: 14),
              bodySmall: const TextStyle(color: Colors.white, fontSize: 14),
            ),
      );
}
