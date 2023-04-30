import 'package:code/src/comom_widgets/form/form_header_widget.dart';
import 'package:code/src/constants/color.dart';
import 'package:code/src/constants/image_strings.dart';
import 'package:code/src/constants/sizes.dart';
import 'package:code/src/constants/text_strings.dart';
import 'package:code/src/feature/authenciation/screens/forgetPassword/forget_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              const SizedBox(height: tDefaultSize - 10),
              const FormHeaderWidget(
                image: tFogetImage,
                title: tForgetPasswordTitle,
                subtitle: tForgetPasswordSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                heighBetween: 10.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tDefaultSize - 10),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(tEmail),
                      hintText: tEmail,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OTPScreen()),
                        );
                      },
                      child: const Text(tNext),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: tWhiteColor,
                        backgroundColor: tSecondaryColor,
                        side: const BorderSide(color: tSecondaryColor),
                      ),
                    ),
                  )
                ],
              ))
            ],
          )),
    );
  }
}
