import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.settings
          ),
          title: Text("my first app"),
          actions: [
            Icon(
                Icons.notification_important_sharp
            ),
            Icon(
                Icons.shopping_cart
            ),
            Icon(
                Icons.favorite
            ),
          ],
        ),
      )
     ),
  );

}