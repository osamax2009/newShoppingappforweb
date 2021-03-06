import 'package:flutter/material.dart';
import 'package:untitled/ProductShowScreen.dart/ProductShow.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  static String routeName = "splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;

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
 int  pageState = 0;
  double?  ScreenHight = 0   ;
  double LoginScreen =   0;






  @override
  Widget build(BuildContext context) {
    double  ScreenHight = MediaQuery.of(context).size.height;
    switch(pageState) {
      case 0 :
        LoginScreen = ScreenHight ;
        break;
      case 1 :
        LoginScreen = ScreenHight - 600 ;
        break;
    }
    return SafeArea(
      child: Stack(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                pageState = 0;
              });
            },
            child: Container(
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
                            onPageChanged: (value){
                              setState(() {
                                currentPage = value;
                              });
                            },
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
                                    ],
                                  )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              listofSplash.length
                              , (index) => buildContainer(index)
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange),
                              onPressed: () {
                              //  Navigator.pushNamed(context, ProductShow.routeName);
                                setState(() {
                                 pageState = 1 ;
                                });

                              },
                              child: Text("Continue...",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ))),
                        )
                      ],
                    )),
              ),
            ),
          ),
          AnimatedContainer(
            decoration: BoxDecoration(
                color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
              )
            ),
            transform: Matrix4.translationValues(0, LoginScreen, 0),
            duration: Duration(milliseconds: 300),

          )
        ],
      ),
    );
  }

  AnimatedContainer  buildContainer(index) {

    return AnimatedContainer(
      margin: EdgeInsets.only(
        right: 8
      ),
      duration: Duration(milliseconds: 100),
      height: 6,
      width: currentPage == index ?  20 : 6,
      decoration: BoxDecoration(
          color:currentPage == index ?  Colors.orange : Colors.white
      ),
    );
  }



}


