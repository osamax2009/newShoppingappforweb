import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';

class DetailsScreen extends StatelessWidget {
  Product product;
  DetailsScreen(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product name"),
      ),
    );
  }
}
