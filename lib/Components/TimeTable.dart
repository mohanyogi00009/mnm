import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Timetable extends StatelessWidget {
  const Timetable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFFE3E2D3),
        borderRadius:  BorderRadius.circular(16)
      ),
      child: Column(
        children: [//fix the fucking spacing on top on bottom refere to figma
                  SizedBox(height: 2,),
                  Day(day: "Mon", class1: "EE2123", class2: "EE2123", class3: "EE2123" , class4: "EE2123" ,lab: "EE2123"),
                  Day(day: "Mon", class1: "EE2123", class2: "EE2123", class3: "EE2123" , class4: "EE2123" ,lab: "EE2123"),
                  Day(day: "Mon", class1: "EE2123", class2: "EE2123", class3: "EE2123" , class4: "EE2123" ,lab: "EE2123"),
                  Day(day: "Mon", class1: "EE2123", class2: "EE2123", class3: "EE2123" , class4: "EE2123" ,lab: "EE2123"),
                  Day(day: "Mon", class1: "EE2123", class2: "EE2123", class3: "EE2123" , class4: "EE2123" ,lab: "EE2123")
                  ,SizedBox(height: 2,)
        ],
      ),
    );
  }
}

class Day extends StatefulWidget {
  final String day;
  final String class1;
  final String class2;
  final String class3;
  final String class4;
  final String lab;
  const Day({super.key,
  required this.day,
  required this.class1,
  required this.class2,
  required this.class3,
  required this.class4,
  required this.lab,
  });

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
  String day = widget.day;
  String class1 = widget.class1;
  String class2 = widget.class2;
  String class3 = widget.class3;
  String class4 = widget.class4;
  String lab = widget.lab;
    return Padding(padding: const EdgeInsetsGeometry.only(left: 6,right: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: EdgeInsetsGeometry.only(right: 20),
        child:Text(day,
          style: TextStyle(
              fontWeight: FontWeight(1000),
              fontFamily: 'Satoshi',
              fontSize: 16
          ),) ,)
        ,
        Text(day,
          style: TextStyle(
              fontWeight: FontWeight(600),
              fontFamily: 'Satoshi',
              fontSize: 16
          ),),
        Text(day,
          style: TextStyle(
              fontWeight: FontWeight(600),
              fontFamily: 'Satoshi',
              fontSize: 16
          ),),
        Text(day,
          style: TextStyle(
              fontWeight: FontWeight(600),
              fontFamily: 'Satoshi',
              fontSize: 16
          ),),
        Text(day,
          style: TextStyle(
              fontWeight: FontWeight(600),
              fontFamily: 'Satoshi',
              fontSize: 16
          ),),
        Text(day,
          style: TextStyle(
              fontWeight: FontWeight(600),
              fontFamily: 'Satoshi',
              fontSize: 16
          ),)
      ],
    ));
  }
}
