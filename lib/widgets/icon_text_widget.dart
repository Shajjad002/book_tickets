import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData iconData;
  final String text;
  const AppIconText({Key? key,required this.iconData,required this.text}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
         Icon(iconData, color: const Color(0xFFBFC2D5)),
          Gap(10),
          Text(text,style: Styles.headLineStyle4 ,)
        ],
      ),
    );
  }
}
