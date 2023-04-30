import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:code/src/feature/authenciation/screens/login/login_footer_widget.dart";
import "package:code/src/feature/authenciation/screens/login/login_form_widget.dart";
import "package:code/src/feature/authenciation/screens/login/login_header_widget.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            loginHeaderWidget(size: size),
            const LoginForm(),
            const LoginFooterWidget(),
          ]),
        ),
      ),
    );
  }
}
