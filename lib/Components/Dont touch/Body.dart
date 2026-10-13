import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../NotesAttendance.dart';
import '../Tbd.dart';
import '../TimeTable.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(top: 6,bottom: 8,left: 12,right: 12),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFFD4C85C)
      ),
      child: Column(
        children: [Timetable(),NotesAttendance(),Expanded(child: Tbd())],
      ),);

  }
}