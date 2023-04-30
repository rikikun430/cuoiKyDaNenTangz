import "package:code/src/constants/color.dart";
import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/sizes.dart";
import "package:code/src/constants/text_strings.dart";
import "package:code/src/feature/authenciation/screens/welcome/welcome_screen.dart";
import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initSate() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 0 : -0,
            left: animate ? 0 : 0,
            child: Image(image: AssetImage(tSplashTopIcon), width: 50),
          ),
          Positioned(
              top: 80,
              left: animate ? tDefaultSize : -80,
              child: Column(
                children: [
                  Text(tAppName,
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                    tAppTagLine,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              )),
          const Positioned(
            bottom: 300,
            child: Image(
              image: AssetImage(tSplashImage),
              width: 300,
            ),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Set state de chinh animation
Future startAnimation() async {
//   await Future.delayed(Duration(milliseconds: 500));
//   setState(() {
//     animated = true;
//   });
//   await Future.delayed(Duration(milliseconds: 5000));
//   Navigator.pushReplacement(
//       context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
}
