import 'package:fintek_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/bills_due.dart';
import '../widgets/card_atm.dart';
import '../widgets/recent_send.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
          backgroundColor: BlueDark,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/icon/icon_menu.png",
                          height: 32,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff233149),
                                  borderRadius: BorderRadius.circular(32)),
                              child: Image.asset(
                                "assets/icon/icon_notifikasi.png",
                                height: 24,
                                width: 24,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/profile_01.png'),
                                      fit: BoxFit.fitWidth),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(36, 36)),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your card information",
                          style: Headline6,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("All Credit\nCards",
                            style: Headline2.copyWith(height: 1.1)),
                        SizedBox(
                          height: 16,
                        ),
                        CardATM(),
                        SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  ),
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
                            "Bills Due",
                            style: Headline3.copyWith(color: Black),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              CardBillDue(
                                  date: "13th Aug",
                                  title: "Figma",
                                  image: "figma.png",
                                  prize: 50.00),
                              SizedBox(
                                width: 8,
                              ),
                              CardBillDue(
                                  date: "13th Aug",
                                  title: "Github",
                                  image: "github.png",
                                  prize: 100.00),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Container(
                                  height: 148,
                                  decoration: BoxDecoration(
                                      color: White,
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(
                                          color: Color(0xfff2f2f2), width: 1)),
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8.0),
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                            color: Color(0xffF5F7F9),
                                            borderRadius:
                                                BorderRadius.circular(48)),
                                        child: Image.asset(
                                            "assets/icon/icon_add.png"),
                                      ),
                                      Text(
                                        "Add a Bill",
                                        style: Text1.copyWith(color: Black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
