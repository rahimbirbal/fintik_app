import 'package:flutter/material.dart';

import '../theme.dart';

class CardBillDue extends StatelessWidget {
  final String date, title, image;
  final double prize;
  
  const CardBillDue({
    required this.date,
    required this.title,
    required this.image,
    required this.prize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF5F7F9),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Color(0xfff2f2f2),width: 1)
        ),
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Text(date,style: Text2.copyWith(color: Black),),
            SizedBox(height: 8,),
            Image.asset("assets/images/$image",height: 48,),
            SizedBox(height: 8,),
            Text(title,style: Text1.copyWith(color: Black),),
            Text("\$"+prize.toString(),style: Text2.copyWith(color: Black),)
          ],
        ),
      ),
    );
  }
}
