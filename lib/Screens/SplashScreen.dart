import 'package:flutter/material.dart';
import 'package:untitled/Component/DefualtButton.dart';


class SplashScreen extends StatefulWidget {
 // const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    var myList = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Iraq.svg/255px-Flag_of_Iraq.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/720px-Flag_of_Brazil.svg.png",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/1280px-Flag_of_Egypt.svg.png",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/1280px-Flag_of_Argentina.svg.png"
    ];

    int count= 0 ;

    void getNewFlag(){
      setState(() {
        count<myList.length -1 ?  count++ : count = 0;
      });
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(
        width: double.infinity, /// i have all screen width
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Text("my app",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.orange
                ),
              ), ///app title
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 15,
                  color: Colors.orange
                )
              ),
              child: Image(
                image: NetworkImage(
                  myList[count]),
                fit: BoxFit.fill,
              ),
            ), /// container of flags
           DefaultButton(),
          ],
        ),
      )

    );
  }
}
