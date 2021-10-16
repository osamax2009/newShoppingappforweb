import 'package:flutter/material.dart';

import 'Theme.dart';


void main(){
  runApp(
    MaterialApp(
      theme: themeData() ,

      home: Scaffold(
      appBar:AppBar(
              leading: Icon(Icons.settings),
              actions: [
                Icon(Icons.settings),
                Icon(Icons.settings),
                Icon(Icons.settings),
              ],
              title: Center(
                  child: Text(" my first app "),
              ),
      ) ,

      ),
    ),
  );
}
