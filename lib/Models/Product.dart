


import 'package:flutter/foundation.dart';

class Product {
  String? id  ;
  String? title;
  String? description;
  String? imageUrl;
  double? price;
  bool fav ;

  Product({
  @required  this.id,
    @required    this.title,
    @required   this.description,
    @required    this.imageUrl,
    @required     this.price,
       this.fav = true
    });



}