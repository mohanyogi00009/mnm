import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './Components/TimeTable.dart';
import './Components/NotesAttendance.dart';
import './Components/Tbd.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Topbar(),
            Expanded(child: Body()),
            Navbar(),
          ],
        ),
      ),
    );
  }
}




//topbar where we see name and Profile
class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //change colors of top bar and navbar deal with the shit
        padding: EdgeInsets.only(left:12,right:12),
        decoration: const BoxDecoration(
          
        ),
        margin: EdgeInsets.only(top: 30, left:4 ,right: 4),
        child:Column(
          children: [Row(
            children: [CircleAvatar(
              //circle size
              radius: 20,
              backgroundColor: const Color(0xFFD4C85C),
              child: Text('S',style: const TextStyle(
                //font size
                  fontSize: 16,
                  fontWeight: FontWeight(1000),
                  color:  Color(0xFF000000),
                  fontFamily: 'Satoshi'
              ) ,),
            ),SizedBox(
              width: (MediaQuery.of(context).size.width * 0.05).clamp(18.0, 40.0),
            )
              ,

              // change this to be Dynamic
              Text("Sathvik",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight(1000),
                  fontFamily: 'Satoshi'

              ),),Spacer(),
              Container(
                padding: EdgeInsets.only(left: 10, right :12, top: 3,bottom: 3),

                height: 34,
                decoration: BoxDecoration(
                    color: const Color(0xFFD4C85C),

                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [SvgPicture.asset(
                    'assets/icons/Search.svg',
                    width: 24,
                    height: 24,
                  ),//to bring in some space without messing around
                    const SizedBox(width: 6,),Text("Search",
                      style: TextStyle(
                          color: const Color(0xFF000000),
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight(600),
                          letterSpacing: 1.2
                      ),)],
                ),
              )],
          ),Container(
            height: 2,
            //here this brings in margin to top so look into thth also
            //the top bar above this thing could also have shit , check thth also
            margin: EdgeInsets.only(top:10,bottom: 0),
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //     colors: [
                //       Color(0xFF8E8D8D), // 0%
                //       Color(0xFF8E8D8D), // 20%
                //       Color(0xFF000000), // 80%
                //       Color(0xFF8E8D8D), // 100%
                //     ],stops: [0.0,0.2,0.8,1.0])
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
      children: [Timetable(),Text("data")],
    ),);
   
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
          GestureDetector(

            onTap: (){
              debugPrint('home ');

            },child: SvgPicture.asset(
            'assets/icons/Home.svg',
            width: 32,
            height: 32,

          ),
          ),
          GestureDetector(
              onTap: (){
                debugPrint('Awards');
              },
              child: SvgPicture.asset(
                'assets/icons/Awards.svg',
                width: 32,
                height: 32,

              )
          ),GestureDetector(

            onTap: (){
              debugPrint('Books');

            },child: SvgPicture.asset(
            'assets/icons/Read 1.svg',
            width: 32,
            height: 32,

          ),
          ),
          GestureDetector(
              onTap: (){
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
