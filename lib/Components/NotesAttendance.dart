import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotesAttendance extends StatelessWidget {
  const NotesAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: const Color(0xFFE3E2D3),
            borderRadius:  BorderRadius.circular(16)
        ),
        child: Column(
          children: [Text("data")],
        ),


      )],
    ),
    );
  }
}


class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}






class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
