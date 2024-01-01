import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [
        Text("Upcoming Flights", style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print("You are tapped");
            },
            child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            )
        ),
      ],
    );
  }
}


