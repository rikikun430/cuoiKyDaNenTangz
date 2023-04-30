import "package:code/src/constants/color.dart";
import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(tGoogleImage),
                width: 20,
              ),
              label: const Text(
                tSignInWithGoggle,
                style: TextStyle(
                  color: tDarkColor,
                ),
              )),
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
            children: [
              TextSpan(
                  text: tAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyMedium),
              TextSpan(
                text: tLogin.toUpperCase(),
                style: TextStyle(
                  color: tDarkColor,
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
