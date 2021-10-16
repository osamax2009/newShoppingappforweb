import 'package:flutter/material.dart';
import 'package:untitled/views/SplashScreen.dart';

import 'Theme.dart';


void main(){
  runApp(
    MaterialApp(
      theme: themeData() ,

      home: SplashScreen()
  ),
  );
}
