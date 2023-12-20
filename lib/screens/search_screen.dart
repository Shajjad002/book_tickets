import 'package:book_tickets/utils/app_styles.dart';
//import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    final size=context;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20),
        children: [
          const Gap(40),
          Text(
            "What are \nyou looking for?",
            style:Styles.headLineStyle.copyWith(fontSize: 35),),
            const Gap(20),
          FittedBox(
           child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  //Airline Tickets
                  Container(
                    width: size.width*.49,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(50) ),
                        color: Colors.white
                    ),
                    child: Center(child: Text("AirLine Tickets"),),
                  ),
                  //Hotels
                  Container(
                    width: size.width*.49,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(50) ),
                      color: Colors.transparent
                    ),
                    child: Center(child: Text("Hotels"),),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFF4F6FD)
              ),
            ),
          ),
          const Gap(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff_rounded, color: Color(0xFFBFC205)),
                Text("Departure",style: Styles.headLineStyle4 ,)
              ],
            ),
          ),
       ],
      ),
    );
  }
}
