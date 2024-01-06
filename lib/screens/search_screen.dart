import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/double_text_widget.dart';
import 'package:book_tickets/widgets/icon_text_widget.dart';
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
          const Gap(25),
          AppIconText(iconData: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(15),
          AppIconText(iconData: Icons.flight_land_rounded, text: "Arrival"),
          Gap(25),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xD91130CE),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Center(
          child: Text(
            "Find Tickets",
            style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 20),
          ),
        )

        ),
          const Gap(35),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          const Gap(15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height:410 ,
            width: size.width*0.42,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                    height:190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/sit.jpg"
                          )
                      )
                  ),
                ),
                Gap(12),
                Text(
                  "20% Discount on business class tickets from Airline On International.",
                  style: Styles.headLineStyle3,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width*0.44,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF3ABBB8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor Survey",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white,)),
                        Gap(10),
                        Text("Take the survey about out service & get discount",style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.w400, color: Colors.white)),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -40,
                    top: -35,
                    child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18,color: Color(0xFF189999)),
                      color: Colors.transparent,
                    ),
                  ),
                  ),
                ],
              ),
              Gap(12),
              Container(
                width: size.width*0.44,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFEC6545),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Take Love",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white,)),
                    Gap(10),
                    RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 30),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 30),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 30),
                            ),
                          ]
                        )
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      )

       ],
      ),
    );
  }
}
