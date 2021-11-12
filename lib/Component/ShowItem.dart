import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';
class ShowItem extends StatelessWidget {
 Product? myproduct ;

 ShowItem(this.myproduct);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: Image(
          image: NetworkImage(myproduct!.imageUrl!),
          fit: BoxFit.fill,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text(myproduct!.title!,
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center
          ),
          leading: Icon(Icons.favorite, color: Colors.orange,),
          trailing: Icon(Icons.shopping_cart, color: Colors.orange,),
        ),
      ),
    );
  }
}



