import 'package:facebook/widgets/maintab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: MainTab(),
    );
  }

}