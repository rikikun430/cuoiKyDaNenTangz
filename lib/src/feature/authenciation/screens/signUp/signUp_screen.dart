import "package:code/src/comom_widgets/form/form_header_widget.dart";
import "package:code/src/constants/color.dart";
import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:code/src/feature/authenciation/screens/signUp/signup_footer_widget.dart";
import "package:code/src/feature/authenciation/screens/signUp/signup_form_widget.dart";
import "package:flutter/material.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormHeaderWidget(
                image: twelcomeScreenImage,
                title: tSignupTitle,
                subtitle: tSignupSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              const SignUpFormWidget(),
              const SignUpFooterWidget(),
            ],
          ),
        ),
      ),
    ));
  }
}
