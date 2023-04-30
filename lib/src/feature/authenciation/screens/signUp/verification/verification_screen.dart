import "package:code/src/comom_widgets/form/form_header_widget.dart";
import "package:code/src/constants/color.dart";
import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:flutter/material.dart";
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class verficationForm extends StatelessWidget {
  const verficationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FormHeaderWidget(
                image: tFogetImage,
                title: tVerfication,
                subtitle: tVerficationSub,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              const SizedBox(height: 20),
              OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                //Nhap vo xong tu suat,
                onSubmit: (code) {
                  print("OTP is => $code");
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(tNext),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: tWhiteColor,
                    backgroundColor: tSecondaryColor,
                    side: const BorderSide(color: tSecondaryColor),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text.rich(TextSpan(
                      text: tCannotGetCode,
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const [
                        TextSpan(
                          text: tClickHere,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ]))),
            ],
          ),
        )),
      ),
    );
  }
}
