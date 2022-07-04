import 'package:ecommerce/pages/home.dart';
import 'package:flutter/material.dart';

import 'pages/bottomnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

        ),

        home: Bottomnavebar(),
    );

}


}

