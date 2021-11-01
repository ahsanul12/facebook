import 'package:facebook/models/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Storybar extends StatelessWidget {
   Storybar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              height: 255,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                 GestureDetector(
                   onTap: ()=> print("Add Story Clicked"),
                   child: Column(
                     children: [
                       Container(
                         height: 170,
                         width: 150,
                         margin: EdgeInsets.only(bottom:30.0),
                         child: ClipRRect(
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(20),
                             topRight: Radius.circular(20),
                           ),
                           child: Image(
                             image: AssetImage('images/user/sonam.jpg'),
                             fit: BoxFit.cover,
                           ),
                         ),
                       ),
                       TextButton(
                           onPressed: () => print("Add Story Clicked"),
                           child: Text(
                             "Add to Story",
                             style: TextStyle(fontSize: 20.0,
                             color: Colors.black,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                       )
                     ],
                   ),
                 ),
                  Positioned(
                    bottom: 50,
                      left: 45,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle_rounded),
                        iconSize: 45.0,
                        color: Colors.blueAccent,
                      )
                  )
                ],
              ),
            ),

            //for loop/
            for(var i = 0; i< storyData.length; i++) ...[
              Container(
                height: 255,
                width: 150,
                child: Stack(
                  fit:StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: storyData[i].onTap,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(storyData[i].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(storyData[i].UserName,
                          style: TextStyle(color: Colors.white ,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    )
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
