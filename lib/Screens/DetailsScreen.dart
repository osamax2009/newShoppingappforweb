import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';


class DetailsScreen extends StatelessWidget {
Product _product ;

DetailsScreen(this._product) ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("details of ${_product.title}"),
      ),
    );
  }
}
