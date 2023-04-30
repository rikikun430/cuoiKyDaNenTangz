import "package:code/src/constants/color.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class ChangePasswordUsingPassword extends StatelessWidget {
  const ChangePasswordUsingPassword({super.key});

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
              Text(
                "Change password",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(tEnterYourCurrentPassword),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.remove_red_eye_rounded,
                      color: tSecondaryColor),
                  labelStyle: TextStyle(color: tSecondaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(tEnterNewPassword),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.remove_red_eye_rounded,
                      color: tSecondaryColor),
                  labelStyle: TextStyle(color: tSecondaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(tEnterNewPasswordAgain),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.remove_red_eye_rounded,
                      color: tSecondaryColor),
                  labelStyle: TextStyle(color: tSecondaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                  ),
                ),
              ),
              SizedBox(
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
