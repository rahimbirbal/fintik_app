import 'package:flutter/material.dart';

Color BlueDark = Color(0xff0A1A35);
Color BlueLight = Color(0xff2A63E2);
Color White = Color(0xffffffff);
Color Black = Color(0xff212121);
Color GreenDark = Color(0xff42B46B);
Color GreenLight = Color(0xffD9F0E1);
Color RedDark = Color(0xffDB4A2F);
Color RedLight = Color(0xffFBECEA);
LinearGradient Gradient1 = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [BlueLight,BlueDark]
        );
LinearGradient Gradient2 = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [BlueLight,BlueDark,BlueDark,BlueDark]
        );
                    

TextStyle Headline1 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w600,fontSize: 53,color: White,
                      );
TextStyle Headline2 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w400,fontSize: 46,color: White,
                      );
TextStyle Headline3 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w600,fontSize: 18,color: White,
                      );
TextStyle Headline4 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w400,fontSize: 16,color: White,
                      );
TextStyle Headline5 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w600,fontSize: 14,color: White,
                      );
TextStyle Headline6 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w400,fontSize: 14,color: White,
                      );
TextStyle Text1 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w600,fontSize: 12,color: White,
                      );
TextStyle Text2 = TextStyle(
                      fontFamily: 'Poppins', fontWeight: FontWeight.w400,fontSize: 12,color: White,
                      );