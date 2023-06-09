import 'package:flutter/material.dart';

import '../theme.dart';

class FilterCard extends StatefulWidget {
  const FilterCard({
    super.key,
  });

  @override
  State<FilterCard> createState() => _FilterCardState();
}

class _FilterCardState extends State<FilterCard> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    List<Map> filterCard = [
      {"title": "Dashboard"},
      {"title": "Cards"},
      {"title": "Analytics"},
      {"title": "Recap"},
      {"title": "History"},
    ];

    return SizedBox(
      height: 38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterCard.length,
        itemBuilder: (context, index){
        return Row(
          children: [
            index == 0?SizedBox(width: 20,):SizedBox(width: 0,),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    color: index==selected?White:Color(0xff3B68CA), 
                    borderRadius: BorderRadius.circular(24)),
                child: Text(
                  filterCard[index]['title'],
                  style: index==selected?Text1.copyWith(color: Black):Text1.copyWith(color: White),
                ),
              ),
            ),
            SizedBox(width: 8,)
          ],
        );
      }),
    );
  }
}
