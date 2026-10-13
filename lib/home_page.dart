import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mnm/Components/Dont%20touch/Resources.dart';
import './Components/Dont touch/Body.dart';
import './Components/Dont touch/Navbar.dart';
import './Components/Dont touch/Topbar.dart';
import './Components/Dont touch/Report.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int id = 1;
  final TextEditingController reportController = TextEditingController();
  @override
  void dispose() {
    reportController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          padding: EdgeInsets.only(top: 20,bottom: 30),
          child: Column(
          children: [
            Topbar(),
            Expanded(child: Matter(selectedIndex: id,reportController: reportController,)),
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










class Matter extends StatefulWidget {
  final int selectedIndex;
  final TextEditingController reportController;
  const Matter({    super.key,
    required this.selectedIndex,
    required this.reportController,});

  @override
  State<Matter> createState() => _MatterState();
}
//umm i truly kinda of dont exactly get how the variable os goin out so better dont mess with it anytime soon
class _MatterState extends State<Matter> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> ls =[Body(),Report(
        reportController: widget.reportController
    ),Resources()];
    return ls[widget.selectedIndex];
  }
}







