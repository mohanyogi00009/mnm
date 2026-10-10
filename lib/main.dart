import 'package:flutter/material.dart';
void main() {runApp(MaterialApp(
  home:Scaffold(
    body:Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [Topbar(),
          Navbar(key : const ValueKey('Navbar'))]

      ),

    ),

  )
));

}



class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left:4 ,right: 4),
      child:Row(
        children: [Text("ASA",
        style:const TextStyle(fontFamily: 'Satoshi',
            fontSize:24),
        )],
      )
    );
  }
}



class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Row( crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
      Text("ASA",
        style:const TextStyle(
            fontSize:24)),
        Text("HI"),
        Text("HI")
      ],),

    );
  }
}
