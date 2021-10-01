import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';



class itemShow extends StatelessWidget {

  Product? myProduct ;
  itemShow(this.myProduct);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(

        child: Image(
          image: NetworkImage(myProduct!.imageUrl ?? ""),
          fit: BoxFit.fill,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: Icon(Icons.favorite,
            color: Colors.orange,
          ),
          title: Text(myProduct!.title ?? "",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          trailing: Icon(Icons.add_shopping_cart,
            color: Colors.orange,
          ) ,
        ),
      ),
    );
  }
}
