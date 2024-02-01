import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jw_test_v1/global/colors.dart';

class DailyText extends StatelessWidget {
  DateTime now = DateTime.now();

  String capitalize(string) {
    return string[0].toUpperCase() + string.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    int day = now.day;

    String dayToWeek =
        capitalize(DateFormat('EEEE', 'pt_BR').format(now).toString());
    String month = capitalize(DateFormat('MMMM', 'pt_BR').format(now));
    
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: grey_100,
        border: Border(
          bottom: BorderSide(color: grey_500, width: 1.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: purple,
                size: 25,
              ),
              Container(
                child: Text(
                  '$dayToWeek, $day de $month',
                  style: TextStyle(color: purple, fontSize: 22),
                ),
                margin: EdgeInsets.only(left: 10),
              ),
              Icon(
                Icons.arrow_right_outlined,
                color: purple,
              ),
            ],
          ),
          Container(
            child: Text(
              'Você verá seu Grandioso Instrutor. - Isa. 30:20.',
              style: TextStyle(color: white, fontSize: 14),
            ),
            margin: EdgeInsets.only(top: 5),
          ),
        ],
      ),
    );
  }
}
