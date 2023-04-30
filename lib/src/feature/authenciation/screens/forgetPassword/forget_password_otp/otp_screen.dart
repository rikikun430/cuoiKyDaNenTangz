import 'package:code/src/constants/color.dart';
import 'package:code/src/constants/sizes.dart';
import 'package:code/src/constants/text_strings.dart';
import 'package:code/src/feature/authenciation/screens/changePassword/change_password_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              tOtptitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(tOtpSubtitle, style: Theme.of(context).textTheme.headline5),
            const SizedBox(
              height: 10,
            ),
            const Text(
              " $tOtpmessage + support@gmail.com",
              textAlign: TextAlign.center,
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
                        builder: (context) => const ChangePassWordOTP()),
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
    );
  }
}
