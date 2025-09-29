


import 'package:flutter/material.dart';

import 'package:project_flutter_one/models/category_models.dart';
import 'package:project_flutter_one/widgets/customappbar.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
        "assets/video/video.mp4",
    )..initialize().then((_) {
      setState(() {
        _controller.play();
      });
    })..setLooping(true);
    super.initState();
  }

  // create list 
   List<CategoryModel> category = [
    CategoryModel(
        image: "assets/images/category/Women.png",
        name: "Women",
    ),
    CategoryModel(
      image: "assets/images/category/Men.png",
      name: "Men",
    ),
    CategoryModel(
      image: "assets/images/category/Kids.png",
      name: "Kids",
    ),
    CategoryModel(
      image: "assets/images/category/Deals.png",
      name: "Deals",
    ),
    CategoryModel(
      image: "assets/images/category/Health.png",
      name: "Health",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
    appBar: Customappbar(    title: "Runway",
        prefix: "assets/svgs/menu.svg",
        suffix: "assets/svgs/notification.svg",),
      
      body: Center(child: Text(" Home page"),),);
  }
}