
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
      ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 35,
        color: Colors.red,
      ),
        headline2: TextStyle(
          fontSize: 20,
          color: Colors.red[77],
        )


    )

  );
}