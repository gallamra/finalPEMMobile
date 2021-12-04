import 'package:barbershop_online/home_pages/navigation.dart';
import 'package:barbershop_online/login_pages/Screens/Signup/signup_screen.dart';
import 'package:barbershop_online/login_pages/components/already_have_an_account_acheck.dart';
import 'package:barbershop_online/login_pages/components/rounded_button.dart';
import 'package:barbershop_online/login_pages/components/rounded_input_field.dart';
import 'package:barbershop_online/login_pages/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
            alignment: Alignment.center,
          children: [SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  "assets/images/andasenang.png",
                  height: size.height * 0.35,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavBar()));
                  },
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),]
        ),
    );
  }
}
