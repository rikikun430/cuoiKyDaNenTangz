import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(tGoogleImage), width: 20),
            onPressed: () {},
            label: Text(tSignInWithGoggle),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyMedium,
                children: const [
                  TextSpan(
                    text: tSignUp,
                    style: TextStyle(color: Colors.blue),
                  ),
                ]))),
      ],
    );
  }
}
