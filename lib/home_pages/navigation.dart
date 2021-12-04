import 'package:barbershop_online/pofile_pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexTampilan = 0;
  var tampilan =[
    Container(child: Text('HOME'),),
    Container(child: Text('ORDER'),),
    Container(child: Text('QUESTION'),),
    EditProfilePage(),
  ];

  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: indexTampilan,
            height: 50.0,
            items: <Widget>[
              Icon(Icons.account_balance_outlined, size : 30, color: Colors.white),
              Icon(Icons.assignment_outlined, size : 30,color: Colors.white,),
              Icon(Icons.help_center_rounded, size : 30,color: Colors.white,),
              Icon(Icons.account_circle, size: 30, color: Colors.white,)

            ],
            color: Colors.blue,

            buttonBackgroundColor: Colors.indigo,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),

            onTap: (index) {
              setState(() {
                indexTampilan=index;

              });
            },
          ),
          body: Container(
            color: Colors.white,
            child: Center(
              child: tampilan[indexTampilan]
            ),
          ),
        ),
      ),
    );
  }
}
