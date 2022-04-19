import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ProductShowScreen.dart/ProductShow.dart';
import 'package:untitled/theme.dart';

import 'AddProducts.dart';

Future<void> main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp()) ;
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductShow(),
      title: "ShoppingApp",
      theme: theme(),
    );
  }
}