import "package:code/src/comom_widgets/form/form_header_widget.dart";
import "package:code/src/constants/color.dart";
import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class ChangePasswordSuccessScreen extends StatelessWidget {
  const ChangePasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height / 6),
              FormHeaderWidget(
                image: tSucessImage,
                title: tPasswordResetTitle,
                subtitle: tPasswordResetSubtitle,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              const SizedBox(
                height: 20,
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
              )
            ],
          ),
        ),
      ),
    ));
  }
}
