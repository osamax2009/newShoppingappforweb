import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';
import 'package:untitled/SelectSearchType.dart';


class SelectYear extends StatelessWidget {
  const SelectYear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Text("مرحبا بك في ثانوية الفارابي \n ",
              style: TextStyle(
                  fontSize: 25,
                color: Colors.red
              ),
            ),
            Container(
              margin:EdgeInsets.all(20) ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 5
                ),

              ),
              child: Image(
                image: NetworkImage("https://scontent.fbgw41-2.fna.fbcdn.net/v/t39.30808-6/275238115_447943243787169_4848650740398574417_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFMU-UI5CPEsdAHbvjplQt7d6VMcVaFPw53pUxxVoU_DsMBNRiQJ0P4K-p31tPof3NP0vK3e20RuqijA6yVZ3IV&_nc_ohc=P7HJ_ZJ5AKUAX-x7eEV&_nc_oc=AQn1BELoDlxRlEXbsk3QD3mwR1DvMo8UxGCdTSubJvaBLrjimTXrlK--zTv_JmjHfHI&tn=CDM4o8IZWhB43Ask&_nc_ht=scontent.fbgw41-2.fna&oh=00_AT9H3bCYVWx1AZ7NO0tMy9EYyiFKy-C3xfbjRVZBaQmxcw&oe=6243F8BD"),
                fit: BoxFit.fill,
              ),
            ),
            Text("مشروع بحث عن بيانات الطلبه باستخدام .. الادوات الحديثه لخزن واسترجاع البيانات..  يمكن من خلاله خزن معلومات الطالب وحذفها واسترجاعها حسب الاسم .. وطباعة بيانات الطالب",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.red
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>SelectSearchtype()
                        )
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Colors.black,
                            width: 3
                        ),
                        color: Colors.blue
                    ),
                    child:  Text("متوسط",
                      style: TextStyle(
                          fontSize: 25
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.black,
                          width: 3
                      ),
                      color: Colors.blue
                  ),
                  child:  Text("ثانوي",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
