// import 'package:fintek_app/models/recent_send.dart';
import 'package:fintek_app/models/recent_send.dart';
import 'package:flutter/material.dart';

class RecentSend extends StatefulWidget {
  const RecentSend({
    super.key,
  });

  @override
  State<RecentSend> createState() => _RecentSendState();
}

class _RecentSendState extends State<RecentSend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      child: ListView.builder(
        // physics: ClampingScrollPhysics(),for animation scroll like rubber
        scrollDirection: Axis.horizontal,
        itemCount: recentSend.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              index==0 ? SizedBox(width: 20,) : SizedBox(),
              Column(
                children: [
                  Container(
                    height: 51,
                    width: 51,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/'+recentSend[index].image),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.all(Radius.elliptical(36, 36)),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(recentSend[index].name)
                ],
              ),
              SizedBox(width: 12,)
            ],
          );
        },
      ),
    );
  }
}

// Column(
//       children: [
//         Container(
//           height: 51,
//           width: 51,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(
//                     'assets/images/profile_02.png'),
//                 fit: BoxFit.fitWidth),
//             borderRadius:
//                 BorderRadius.all(Radius.elliptical(36, 36)),
//           ),
//         ),
//         SizedBox(
//           height: 4,
//         ),
//         Text("Rudy")
//       ],
//     );