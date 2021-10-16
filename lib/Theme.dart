
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.orange,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),

      )
  );
}