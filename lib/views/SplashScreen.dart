import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
                Text("My Shopping App ",
               style: Theme.of(context).textTheme.headline1,
                ),
              SizedBox(height: 20,),
              Text("shopping now with new product \n  delivered to you home ",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: PageView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.green
                        )
                      ),
                      margin: EdgeInsets.all(20),
                      child: Image(
                        image: AssetImage("Assets/images/splash_1.png"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Colors.orange
                          )
                      ),
                      margin: EdgeInsets.all(20),
                      child: Image(
                        image: AssetImage("Assets/images/splash_2.png"),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Colors.red
                          )
                      ),
                      margin: EdgeInsets.all(20),
                      child: Image(
                        image: AssetImage("Assets/images/splash_3.png"),
                      ),
                    ),
                  ],
                ),
              ),

             
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){},
                    child:  Text("continue"),
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
