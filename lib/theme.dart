import 'package:flutter/material.dart';


ThemeData theme() {
  return ThemeData(
      brightness: Brightness.dark,
      fontFamily: "OpenSans",

      textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0 ,fontWeight: FontWeight.bold ),
        headline6:TextStyle(fontSize: 36.0 ,color: Colors.green),
  )



  );
}



