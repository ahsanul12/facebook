import 'package:facebook/widgets/home/menubar.dart';
import 'package:facebook/widgets/home/postbar.dart';
import 'package:facebook/widgets/home/storybar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
   HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top:8.0),
      child: ListView(
        children: [
          PostBar(),
          Divider(thickness: 1, color: Colors.black12,),
          Menubar(),
          Divider(thickness: 1, color: Colors.black12,),
          Storybar()
        ],
      ),
    );
  }

}