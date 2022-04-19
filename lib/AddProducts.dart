import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ProductShowScreen.dart/ProductShow.dart';


class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {




Future<void>  AddProduct(

      String title,
      String price,
      String imageUrl,
      String description,
      )  async {

    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    final CollectionReference _areaCollection =  _firestore.collection('Products');

    var data = {
      "title":title,
      "price": price,
      "imageUrl":imageUrl,
      "description":description
    };


  await  _areaCollection.add(data).whenComplete(() => print(" data created")).catchError(
          (error) => print(error)
  );




  }




  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    TextEditingController  _titlecontroller = TextEditingController();
    TextEditingController  _pricecontroller = TextEditingController();
    TextEditingController  _imageurlcontroller = TextEditingController();
    TextEditingController  _desccontroller = TextEditingController();


    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Add new Product"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal:width * 0.3,
          vertical: 30
        ),
        width: 400,
        alignment:Alignment.center ,
        child: Form(
          key:_formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _titlecontroller,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Product Title",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.title
                  )
                ),


              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _pricecontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Product price",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                        Icons.price_check
                    ),
                ),

              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _imageurlcontroller,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                    hintText: "Enter Product ImageUrl",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                        Icons.image
                    ),
                ),

              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _desccontroller,
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "Enter Product description",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                        Icons.description
                    )
                ),

              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){



                      AddProduct(_titlecontroller.text,
                          _pricecontroller.text,
                          _imageurlcontroller.text,
                          _desccontroller.text).whenComplete(() =>

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            ProductShow()
                          )

                          )


                      );









                    },
                    child: Text("Add new Product"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
