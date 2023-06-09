import 'package:fintek_app/models/current_activity.dart';
import 'package:fintek_app/pages/home.dart';
import 'package:fintek_app/theme.dart';
import 'package:fintek_app/widgets/filter_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/recent_send.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
          backgroundColor: BlueLight,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(gradient: Gradient2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff3E6DD7),
                                  borderRadius: BorderRadius.circular(32)),
                              child: Image.asset(
                                "assets/icon/icon_back.png",
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ),
                          Text(
                            "Details",
                            style: Headline3,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    FilterCard(),
                    SizedBox(height: 24,),
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Balance",
                            style: Headline6,
                          ),
                          Text(
                            "\$365.500",
                            style: Headline1,
                          ),
                          Text(
                            "9012  5678  1234  3456",
                            style: Headline6,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                    padding: EdgeInsetsDirectional.only(bottom: 40),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: White),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            height: 6,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(8))),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recent Send",
                                style: Headline3.copyWith(color: Black),
                              ),
                              Text(
                                "Details",
                                style: Text1.copyWith(color: BlueLight),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        RecentSend(),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          child: Text(
                            "Current Activity",
                            style: Headline3.copyWith(color: Black),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                            decoration: BoxDecoration(
                              color: White,
                              border: Border.all(color: Color(0xffD9D9D9), width: 1),
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/icon/icon_seacrh.png",width: 20,),
                                SizedBox(width: 4,),
                                Text("Search Transaction",style: Headline6.copyWith(color: Color(0xffD9D9D9)),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        CurrentActivity()
                      ],
                    ),
                  )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class CurrentActivity extends StatelessWidget {
  const CurrentActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentActivity.length,
        itemBuilder: (context, index) {
        return Container(
        padding: EdgeInsetsDirectional.only(bottom:16 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: currentActivity[index].status == true ? GreenLight : RedLight
              ),
              child: currentActivity[index].status == true ? Image.asset("assets/icon/icon_in.png",width: 24,):Image.asset("assets/icon/icon_out.png",width: 24,),
            ),
            SizedBox(width: 8,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(currentActivity[index].name,style: Text1.copyWith(color: Black),),
                  Text(currentActivity[index].time,style: Text2.copyWith(color: Colors.grey),) 
                ],
              ),
            ),
            Text("+\$"+ currentActivity[index].money.toString(),style: Headline5.copyWith(color: currentActivity[index].status == true ? GreenDark : RedDark),)
          ],
        ),
      );
      },),
    );
  }
}
