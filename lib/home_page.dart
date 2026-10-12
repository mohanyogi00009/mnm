import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './Components/TimeTable.dart';
import './Components/NotesAttendance.dart';
import './Components/Tbd.dart';
import './Components/Dont touch/Navbar.dart';
import './Components/Dont touch/Topbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int id = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          padding: EdgeInsets.only(top: 20,bottom: 30),
          child: Column(
          children: [
            Topbar(),
            Expanded(child: Matter(selectedIndex: id)),
            Navbar(
              id: id,
              onChanged: (value) {
                setState(() {
                  id = value;
                });
              },
            ),
          ],
      )) 
      ,
    );
  }
}






class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class Matter extends StatefulWidget {
  final int selectedIndex;
  const Matter({super.key,
  required this.selectedIndex});

  @override
  State<Matter> createState() => _MatterState();
}

class _MatterState extends State<Matter> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


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




