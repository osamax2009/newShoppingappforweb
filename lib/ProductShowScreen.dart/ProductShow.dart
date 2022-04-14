import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class ProductShow extends StatelessWidget {

  Future<void> deleteProduct (uid) async{
    CollectionReference  Products =  FirebaseFirestore.instance.collection("Products");

   await Products
        .doc(uid).delete().then(
            (value) => print(" product Deleted ")
    ).catchError((error)=> print(error));

  }


   ProductShow({Key? key}) : super(key: key);
  Stream<QuerySnapshot>  Products =  FirebaseFirestore.instance.collection("Products").snapshots();

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        title: Text("Product Show Screen"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Products,
        builder: ( context ,AsyncSnapshot<QuerySnapshot>  snapshot){
          if (snapshot.hasError) {
            return Text(" Something Wrong") ;
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator()
            ) ;
          }
          if (snapshot.hasData) {
            return ListView(

              children: snapshot.data!.docs.map(
                  (DocumentSnapshot document) {

             Map<String ,dynamic > data =  document.data()! as Map<String ,dynamic > ;
                return Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.25
                  ),
                  child: Column(
                    children: [
                      Card(
                            elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(data["title"] ?? " no title"),

                              Container(
                                width: 100,

                                child: Image(
                                  image: NetworkImage(
                                      data["imageUrl"] ??
                                          "http://www.onlylondon.properties/application/modules/themes/views/default/assets/images/image-placeholder.png"
                                  ),
                                ),
                              ),
                              Text(data["description"] ?? " no title"),
                              Text(data["price"] ?? " no title"),

                            ],
                          )

                      ),
                      ElevatedButton(
                          onPressed: (){
                            deleteProduct(document.id);

                          },
                          child: Text("Delete")
                      )
                    ],
                  ),
                );

                  }
              ).toList()
            ) ;
          }

          return Center(
              child: CircularProgressIndicator()
          ) ;

        },


      ),
    );
  }
}
