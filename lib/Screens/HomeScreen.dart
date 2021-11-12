import 'package:flutter/material.dart';
import 'package:untitled/Models/Product.dart';

class HomeScreen extends StatelessWidget {

  var myProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
      'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
      'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(" my Shopping Page"),

        ),
        body: GridView.builder(
          itemCount: myProducts.length,
          itemBuilder: (cx,i)=> ClipRRect(
              borderRadius: BorderRadius.circular(20),
            child: GridTile(
              child: Image(
              image: NetworkImage(myProducts[i].imageUrl!),
                fit: BoxFit.fill,
        ),
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(myProducts[i].title!,
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
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3/2,

           ),
        )
      ),
    );
  }
}



