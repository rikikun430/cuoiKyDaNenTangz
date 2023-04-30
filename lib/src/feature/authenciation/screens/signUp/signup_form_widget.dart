import "package:code/src/constants/color.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:code/src/feature/authenciation/screens/signUp/verification/verification_screen.dart";
import "package:flutter/material.dart";

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(tFullName),
                border: OutlineInputBorder(),
                prefixIcon:
                    Icon(Icons.person_outline_rounded, color: tSecondaryColor),
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
                label: Text(tEmail),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email, color: tSecondaryColor),
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
                label: Text(tPhone),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone, color: tSecondaryColor),
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
                label: Text(tPassword),
                border: OutlineInputBorder(),
                prefixIcon:
                    Icon(Icons.remove_red_eye_rounded, color: tSecondaryColor),
                labelStyle: TextStyle(color: tSecondaryColor),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                ),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const verficationForm()),
                  );
                },
                child: Text(tSignUp.toUpperCase()),
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
    );
  }
}
