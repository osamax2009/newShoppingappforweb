import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';

class DetailsScreen extends StatelessWidget {
  Product product;
  DetailsScreen(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title! ),
      ),
      body: Container(
          child: Column(
            children: [
              
              
              
              Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.orange,
                    width: 10
                  )
                  
                ),
                
                margin: EdgeInsets.all(15),
                child:
              Image.network(product.imageUrl! ,fit: BoxFit.fill,),
              
              )
            ],
          )
          ,
      ),
    );
  }
}
