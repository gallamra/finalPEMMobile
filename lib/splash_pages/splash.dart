import 'dart:async';
import 'file:///D:/KULIAH/LP3I/smester3/android/barbershop_online/lib/onbord_pages/onbord_page.dart';
import 'package:barbershop_online/login_pages/Screens/Login/login_screen.dart';
import 'package:barbershop_online/login_pages/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class splashpage extends StatefulWidget {
  @override
  _splashpageState createState() => _splashpageState();
}

class _splashpageState extends State<splashpage> {

  bool varintro;

  cekPref() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      varintro = preferences.getBool('cekintro');
    });
  }



  durasisplash() async{
    var durasi = const Duration(seconds: 5);
    return Timer(durasi,(){
    if(varintro == true){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return WelcomeScreen();
          })
      );
    }else{
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return OnBordPage();
          })
      );

    }

    });
  }
  @override
  void initState() {
    super.initState();
    durasisplash();
    cekPref();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Image.asset("assets/images/splash.png",width: 300,),
         SizedBox(height: 20,),
         CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
