import 'package:fintek_app/pages/home.dart';
import 'package:fintek_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: BlueDark,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome to Fintik",style: Headline3),
                  Image.asset("assets/icon/hands.png", height: 22,),
                ],
              ),
              SizedBox(height:24,),
              Image.asset("assets/images/image_intro.png",width: double.infinity,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text("Spend, Earn and Track Finance Easily",style: Headline2.copyWith(height: 1.2)),
                    Text("A new way to do all banking activities easily using your digital wallet",style: Headline6.copyWith(color: Color(0xffC3C3C3))),
                    SizedBox(height: 32,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      },
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: BlueLight,
                          borderRadius: BorderRadius.circular(32)
                        ),
                        child: Center(child: Text("Let's Go", style: Headline5,)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
