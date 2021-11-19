import 'package:flutter/material.dart';



ThemeData myThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white60,
    appBarTheme: AppBarTheme(
        elevation: 5,
        backgroundColor: Colors.orange,
        iconTheme: IconThemeData(color: Colors.black)
    ),
  );
}

