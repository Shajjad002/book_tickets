import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
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
            ],
          ),
        ],
      ),
    );
  }
}
