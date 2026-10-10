import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {runApp(MaterialApp(
  home:Scaffold(
    body:Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [Topbar(),Expanded(child: Body()),
          Navbar(key : const ValueKey('Navbar'))]

      ),

    ),

  )
));

}


//topbar where we see name and Profile
class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:12,right:12),
      margin: EdgeInsets.only(top: 30, left:4 ,right: 4),
      child:Column(
        children: [Row(
          children: [CircleAvatar(
            //circle size
            radius: 20,
            backgroundColor: const Color(0xFF54426B),
            child: Text('S',style: const TextStyle(
              //font size
                fontSize: 16,
                fontWeight: FontWeight(1000),
                color: const Color(0xFFFFFFFF),
                fontFamily: 'Satoshi'
            ) ,),
          ),SizedBox(
            width: (MediaQuery.of(context).size.width * 0.05).clamp(18.0, 40.0),
          )
            ,

            // chage this to be Dynamic
            Text("Sathvik",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight(1000),
                fontFamily: 'Satoshi'

            ),),Spacer(),
            Row(
              children: [Text("Search")],
            )],
        ),Container(
          height: 2,
          margin: EdgeInsets.only(top:10,bottom: 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
            colors: [
              Color(0xFF8E8D8D), // 0%
              Color(0xFF8E8D8D), // 20%
              Color(0xFF000000), // 80%
              Color(0xFF8E8D8D), // 100%
            ],stops: [0.0,0.2,0.8,1.0])
          ),
        )],
      )

    );
  }
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}



class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Row( crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SvgPicture.asset(
          'assets/icons/Home.svg',
          width: 32,
          height: 32,

        ),
        SvgPicture.asset(
          'assets/icons/Awards.svg',
          width: 32,
          height: 32,

        ),

        SvgPicture.asset(
          'assets/icons/Read 1.svg',
          width: 32,
          height: 32,

        ),        SvgPicture.asset(
          'assets/icons/Flag.svg',
          width: 32,
          height: 32,

        )
      ],),

    );
  }
}
