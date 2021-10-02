import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';


class ItemShow extends StatelessWidget {
Product _product ;
  ItemShow(this._product);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image(
          image: NetworkImage(_product.imageUrl??""),
          fit: BoxFit.fill,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45 ,
          title: Text(_product.title??"",
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 17
            ) ,
          ),
          leading: Icon(Icons.favorite,color: Colors.orange,),
          trailing: Icon(Icons.shopping_cart_rounded,color: Colors.orange,),
        ),
      ),
    );
  }
}
