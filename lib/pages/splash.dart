


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:project_flutter_one/pages/home.dart';
import 'package:project_flutter_one/widgets/animation_line.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
     Future.delayed(
        Duration(milliseconds: 800),
        () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => Home()));
        }
    );
    super.initState();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
       Center(child: SvgPicture.asset("assets/logo/logo.svg"),
       ),
       Gap(10),

      




    ],),);
  }
}