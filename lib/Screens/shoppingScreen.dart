import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my firstApp"),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text("my data")
          ],
        ),
      ),
    );
  }
}

