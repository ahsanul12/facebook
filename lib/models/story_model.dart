import 'package:flutter/cupertino.dart';

class StoryModel{
   final VoidCallback onTap;
   final String image;
   final String UserName;

   StoryModel({
     required this.onTap,
     required  this.image,
     required  this.UserName,
});
}

List<StoryModel> storyData =[
  StoryModel(
      UserName: "Moni",
      onTap: ()=> print('Moni Story Clicked'),
      image: "images/story/s1.jpg",
  ),
  StoryModel(
    UserName: "Asa",
    onTap: ()=> print('Asa Story Clicked'),
    image: "images/story/s2.jpg",
  ),
  StoryModel(
    UserName: "Lima",
    onTap: ()=> print('Lima Story Clicked'),
    image: "images/story/s3.jpg",
  ),
  StoryModel(
    UserName: "Laboni",
    onTap: ()=> print('Laboni Story Clicked'),
    image: "images/story/s4.jpg",
  ),
  StoryModel(
    UserName: "Tisha",
    onTap: ()=> print('Tisha Story Clicked'),
    image: "images/story/s5.jpg",
  ),
];