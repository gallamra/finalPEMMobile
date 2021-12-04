import 'package:barbershop_online/login_pages/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
class OnBordPage extends StatefulWidget {
  @override
  _OnBordPageState createState() => _OnBordPageState();
}

class _OnBordPageState extends State<OnBordPage> {
  simpanPref() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setBool('cekintro', true);
      preferences.commit();
    });
  }
  final pages = [
    //page1
    PageViewModel(
        pageColor:Colors.white,
        bubbleBackgroundColor: Colors.blue,
        title: Container(),
        body: Column(
            children: <Widget> [
              Text("Selamat Datang Di Barber Shop Online Kami !!!"),
              Text("Selamat Menikmati Aplikasi ini",
                style: TextStyle(color: Colors.black54,fontSize: 16),)
            ]
        ),
        mainImage:Image.asset("assets/images/logobarber.png",width: 285,alignment: Alignment.center,),
        textStyle: TextStyle(color: Colors.black)
    ),
    //page 2
    PageViewModel(
        pageColor: Colors.white,
        bubbleBackgroundColor: Colors.blue,
        title: Container(),
        body: Column(
            children: <Widget> [
              Text("KAMI MENYEDIAKAN FITUR PENGAMBILAN ANTRIAN"),
              Text("Tidak Perlu Ribet Menunggu Antrian",
                style: TextStyle(color: Colors.black54,fontSize: 16),)
            ]
        ),
        mainImage:Image.asset("assets/images/ANTRIAN.png",width: 285,alignment: Alignment.center,),
        textStyle: TextStyle(color: Colors.black)
    ),
    //page 3
    PageViewModel(
        pageColor: Colors.white,
        bubbleBackgroundColor: Colors.blue,
        title: Container(),
        body: Column(
            children: <Widget> [
              Text("TERUS MENIKMATI APLIKASI INI"),
              Text("Anda Senang Menggunakan Aplikasi Ini Kami Pun Ikunt Senang ",
                style: TextStyle(color: Colors.black54,fontSize: 16),)
            ]
        ),
        mainImage:Image.asset("assets/images/andasenang.png",width: 285,alignment: Alignment.center,),
        textStyle: TextStyle(color: Colors.black)
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:<Widget>[
            IntroViewsFlutter(
              pages,
              onTapDoneButton:() {
               simpanPref();
               Navigator.of(context).pushReplacement(
                   MaterialPageRoute(builder: (_){
                     return WelcomeScreen();
                   })
               );
              },
              showSkipButton: false,
              doneText: Text("Mulai Sekarang"),
              pageButtonsColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
  }

