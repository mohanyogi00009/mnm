import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Navbar extends StatelessWidget {
  final int id ;
  final Function(int) onChanged;

  const Navbar({super.key,
    required  this.id,
    required this.onChanged});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFD4C85C),
          borderRadius: BorderRadius.circular(20)
      ),
      margin: EdgeInsets.only(left: 12,right: 12),
      padding: EdgeInsets.only(bottom: 12,top: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(

            onTap: (){
              onChanged(0);
              debugPrint('home ');

            },child: SvgPicture.asset(
            'assets/icons/Home.svg',
            width: 32,
            height: 32,

          ),
          ),
          GestureDetector(
              onTap: (){
                onChanged(1);
                debugPrint('Awards');
              },
              child: SvgPicture.asset(
                'assets/icons/Awards.svg',
                width: 32,
                height: 32,

              )
          ),GestureDetector(

            onTap: (){
              onChanged(2);
              debugPrint('Books');

            },child: SvgPicture.asset(
            'assets/icons/Read 1.svg',
            width: 32,
            height: 32,

          ),
          ),
          GestureDetector(
              onTap: (){
                onChanged(3);
                debugPrint('Flag');
              },
              child: SvgPicture.asset(
                'assets/icons/Flag.svg',
                width: 32,
                height: 32,

              )
          )

        ],),

    );
  }
}