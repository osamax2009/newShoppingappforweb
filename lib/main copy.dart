import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:untitled/AddStudent.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/SelectYear.dart';




import 'HomePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  await Locales.init(['ar']);
  //   options: const FirebaseOptions(
  //     apiKey: 'AIzaSyCrJEDU0SZU9AMXv0xrYjzQVIdpZsNB4Rg',
  //     appId: '1:821459292826:android:a7d7c10761541e0aedc523',
  //     messagingSenderId: '821459292826',
  //     projectId: 'evve-b9411',
  //     databaseURL: 'https://evve-b9411-default-rtdb.firebaseio.com',
  //     //storageBucket: 'react-native-firebase-testing.appspot.com',
  //   ),

 // );
      runApp(MyApp());
    }


    class MyApp extends StatelessWidget {
      const MyApp({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return LocaleBuilder (
            builder:(locale)=>
            MaterialApp(
              theme: ThemeData(
                fontFamily:"OpenSans",
              ),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: Locales.delegates,
              supportedLocales: Locales.supportedLocales,
              locale: locale,
            home:
            //AddStudent()
            HomeScreenText()
          ),
        );
      }
    }




    class HomeScreenText extends StatelessWidget {
       HomeScreenText({Key? key}) : super(key: key);

       Stream<QuerySnapshot>   _schoolCollect  = FirebaseFirestore.instance.collection('schoolx').snapshots() ;

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("read form database"),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream:_schoolCollect ,
            builder: (  BuildContext context , AsyncSnapshot<QuerySnapshot>  snapshot ){

              if(snapshot.hasError){
                Text("Something went wrong ");
              }

              if (snapshot.connectionState == ConnectionState.waiting){
                Text("Loading .......");

              }

              return ListView(
                children: snapshot.data!.docs.map(
                        ((DocumentSnapshot document)

                        {

                          Map<String,dynamic>  data =  document.data()! as Map<String , dynamic> ;
                          return Text(data["fullname"]);

                        }



                        )

                )


                .toList(),

              );



            },





          ),
        );
      }
    }


