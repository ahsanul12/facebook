import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
   MyDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Drawer(
     child: Text('Menu'),
   );
  }

}
