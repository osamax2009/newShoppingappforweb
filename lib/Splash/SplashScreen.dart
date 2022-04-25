import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  static String routeName = "splash";

  var listofSplash = [
    {
      "text": "Welcome to shopping, Let’s shop!",
      "image": "assets/image/image1.jpg"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/image/image2.jpg"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/image/image3.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SplashScreen"),
        ),
        body: Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    "MyShpping \n App",
                    style: TextStyle(fontSize: 25, color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                      itemCount: listofSplash.length,
                      itemBuilder: (cx, index) => Column(
                            children: [
                              Text(
                                listofSplash[index]["text"]!,
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  listofSplash[index]["image"]!,
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width: MediaQuery.of(context).size.width * 0.8,
                                ),
                              ),
                               Spacer(),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    onPressed: () {},
                                    child: Text("Continue...",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ))),
                              )
                            ],
                          )),
                ),
              ],
            )),
      ),
    );
  }
}


Container buildContainer() {

  re
}
