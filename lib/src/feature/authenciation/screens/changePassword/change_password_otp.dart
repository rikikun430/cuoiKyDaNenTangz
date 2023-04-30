import "package:code/src/constants/color.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:code/src/feature/authenciation/screens/changePassword/change_password_success.dart";
import "package:flutter/material.dart";

class ChangePassWordOTP extends StatelessWidget {
  const ChangePassWordOTP({super.key});

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Change password",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
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
              const SizedBox(
                height: tFormHeight - 20,
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ChangePasswordSuccessScreen()),
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
          ),
        ),
      ),
    ));
  }
}
