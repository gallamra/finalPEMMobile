import 'package:barbershop_online/login_pages/Screens/Login/login_screen.dart';
import 'package:barbershop_online/login_pages/Screens/Signup/components/or_divider.dart';
import 'package:barbershop_online/login_pages/components/already_have_an_account_acheck.dart';
import 'package:barbershop_online/login_pages/components/rounded_button.dart';
import 'package:barbershop_online/login_pages/components/rounded_input_field.dart';
import 'package:barbershop_online/login_pages/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

import 'social_icon.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children:[ SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  "assets/images/logobarber.png",
                  height: size.height * 0.35,
                ),
                RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  hintext: "Password",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  hintext: "Cofirmn Password",
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "SIGNUP",
                  press: () {},
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocalIcon(
                      iconSrc: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/icons/google-plus.svg",
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          )],
        ),
    );
  }
}
