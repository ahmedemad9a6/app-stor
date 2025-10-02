

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  const Customappbar({super.key,required this.prefix,required this.suffix,required this.title,this.onTap});
      final String prefix;
      final String suffix;
      final String title;
      final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    //! fix space between widget in app bar 
    return AppBar(   
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
        GestureDetector(onTap: onTap,
          
          child:SvgPicture.asset(prefix,width: 24) ,),
         Gap(110),
          Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
                 Gap(240),
                SvgPicture.asset(suffix,width: 20),
      ],)
      , backgroundColor: Colors.white,
      toolbarHeight: preferredSize.height,
      scrolledUnderElevation: 0.0,
    //leading: SizedBox.shrink(),
      );
      
  }

 @override
  Size get preferredSize => const Size.fromHeight(80);

}