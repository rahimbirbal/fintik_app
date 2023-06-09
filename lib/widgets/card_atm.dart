import 'package:fintek_app/pages/details_card.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class CardATM extends StatelessWidget {
  const CardATM({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsCard()));
      },
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: Gradient1,
          borderRadius: BorderRadius.circular(24)
        ),
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/logo_visa.png",height: 25,),
                Image.asset("assets/images/logo_debit.png",height: 25,)
              ],
            ),
            Text("9012  5678  1234  3456",style: Headline5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Markus Aurelius",style: Text2,),
                Text("08/26",style: Text2,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}