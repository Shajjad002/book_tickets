import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
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
          Container(
            child: Row(
              children: [
                Container(
                  width: size.width*.44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                  ),
                  child: Text("AirLine Tickets"),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF4F6FD)
            ),
          ),
       ],
      ),
    );
  }
}
