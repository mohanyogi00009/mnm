import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Resources extends StatefulWidget {
  const Resources({super.key});

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return MainDivisons();
  }
}


class MainDivisons extends StatelessWidget {
  const MainDivisons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: Column(
            children: [SubStuff(),SubStuff(),SubStuff(),],
          )),SizedBox(width: 20,),Expanded(child: Column(
            children: [SubStuff(),SubStuff(),SubStuff(),],
          ))
        ],
      ),
    );
  }
}


class SubStuff extends StatelessWidget {
  const SubStuff({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      margin: EdgeInsets.only(bottom: 20m),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFD4C85C),
        borderRadius: BorderRadius.circular(20),

      ),child: Column(

      children: [Text("data")],
    ),
    ));
  }
}
