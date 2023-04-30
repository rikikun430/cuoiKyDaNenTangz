import "package:code/src/constants/color.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:code/src/feature/authenciation/screens/forgetPassword/forget_password_mail/forget_password_mail.dart";
import 'package:code/src/feature/authenciation/screens/signUp/verification/verification_screen.dart';
import "package:flutter/material.dart";

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefix: Icon(Icons.person_2_outlined),
              labelText: tEmail,
              hintText: tEmail,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefix: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      builder: (context) => Container(
                            padding: const EdgeInsets.all(tDefaultSize),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(tForgetMailSubTitle,
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                Text(tForgetMailSubTitle,
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                                const SizedBox(height: 10),
                                forgetPasswordWidget(
                                    btnIcon: Icons.mail_outline_rounded,
                                    title: tEmail,
                                    subTitle: tResetViaEmail,
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgetPasswordMailScreen()),
                                      );
                                    }),
                                const SizedBox(height: 10),
                                forgetPasswordWidget(
                                    btnIcon: Icons.mobile_friendly_rounded,
                                    title: tPhone,
                                    subTitle: tResetViaPhone,
                                    onTap: () {}),
                              ],
                            ),
                          ));
                },
                child: const Text(tForgotPassword)),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(tLogin.toUpperCase()),
              style: ElevatedButton.styleFrom(
                foregroundColor: tWhiteColor,
                backgroundColor: tSecondaryColor,
                side: const BorderSide(color: tSecondaryColor),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class forgetPasswordWidget extends StatelessWidget {
  const forgetPasswordWidget({
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(btnIcon, size: 40.0),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
