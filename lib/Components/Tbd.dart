import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tbd extends StatelessWidget {
  const Tbd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      margin: EdgeInsets.only(top: 6,bottom: 8,left: 12,right: 12),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFFE3E2D3)
      ),
      child: Text("data"),
    );
  }
}
