import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';

class HomeScreen extends StatelessWidget {

Product myproduct = Product("fejfkldsj", "new shirt", "ldskjfdlskjfldkslksdf", "https://images.squarespace-cdn.com/content/v1/59d2bea58a02c78793a95114/1631754343553-TCC24IDYFGICXGE66HSD/SF00-0604-RED-Front.jpg", 33.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(" my Shopping Page"),

        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Text(myproduct.title),
              Image(image:             NetworkImage(myproduct.imageUrl)
              )
            ],
          ),
        ),
      ),
    );
  }
}



