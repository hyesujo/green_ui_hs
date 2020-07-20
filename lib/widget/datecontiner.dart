

import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {

  String weekDay;
  String date;
  bool isSelected;

  DateContainer({
    this.weekDay,
    this.date,
    this.isSelected
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: isSelected ? Colors.greenAccent[700] : Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(date,
            style : TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 19.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 13,),
          Text(weekDay,
            style : TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),

    );
  }
}





