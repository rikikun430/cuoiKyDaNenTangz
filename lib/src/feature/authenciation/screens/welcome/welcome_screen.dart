import 'package:code/src/constants/color.dart';
import 'package:code/src/constants/image_strings.dart';
import 'package:code/src/constants/sizes.dart';
import 'package:code/src/constants/text_strings.dart';
import 'package:code/src/feature/authenciation/screens/login/login_screen.dart';
import 'package:code/src/feature/authenciation/screens/signUp/signUp_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(tDefaultSize),
      child: Column(
        children: [
          Image(image: AssetImage(twelcomeScreenImage), height: height * 0.8),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tSecondaryColor,
                      side: BorderSide(color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                    ),
                    child: Text(tLogin.toUpperCase())),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tWhiteColor,
                      backgroundColor: tSecondaryColor,
                      side: BorderSide(color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                    ),
                    child: Text(tSignUp.toUpperCase())),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
