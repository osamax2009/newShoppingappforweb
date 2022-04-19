

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
  static String routeName = "splash";


  var listofSplash = [
    {
      "text": "welcome to myshopping App",
      "image" : "assets/image/image1.jpg"
    },
    {
      "text": " our app have great product",
      "image" : "assets/image/image1.jpg"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SplashScreen"
        ),
      ),
      body: Container(
        width: double.infinity,
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                  "MyShpping \n App",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.orange
                ),
                textAlign: TextAlign.center,
              ),
            ),
            
            Expanded(
              child: PageView.builder(
                    itemCount: listofSplash.length,
                  itemBuilder: (cx,index)=>
                      Column(
                        children: [
                          Text(
                              listofSplash[index]["text"]!,
                            textAlign: TextAlign.center,
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          Image.asset(listofSplash[index]["image"]!,
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.8,
                          )
                          
                        ],
                      )
              ),
            )

          ],
        )
      ),
    );
  }
}
