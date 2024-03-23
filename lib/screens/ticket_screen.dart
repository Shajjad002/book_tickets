import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/column_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children:[
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical:20),
            children: [
             Gap(40),
              Text("Tickets", style: Styles.headLineStyle,),
              Gap(20),
              const AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous",),
              Gap(20),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0],isColor: true,),
              ),
              SizedBox(height: 1,),
              Container(
                //width: size.width*0.80,
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child:  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         AppColumnLayout(
                           firstText: 'Flutter DB',
                           secondText: 'Passenger',
                           alignment: CrossAxisAlignment.start,
                           isColor: false,
                         ),
                          AppColumnLayout(
                           firstText: '5221 478566',
                           secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                         )
                        ],
                      ),
                      Gap(20),
                      const AppLayoutBuilderWidget(sections: 15,isColor: false,width:5,),
                      Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: '364738 28274478',
                            secondText: 'Number of E-Ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          )
                        ],
                      ),
                      Gap(20),
                      const AppLayoutBuilderWidget(sections: 15,isColor: false,width:5,),
                      Row(
                        children:[
                          Column(
                            children:[
                              Row(

                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
