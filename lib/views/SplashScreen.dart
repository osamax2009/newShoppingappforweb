import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
                Text("My Shopping App ",
               style: Theme.of(context).textTheme.bodyText1,
                ),

            ],
          ),
        ),
      ),

    );
  }
}
