import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    this.heighBetween,
    required this.image,
    required this.title,
    required this.subtitle,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final CrossAxisAlignment crossAxisAlignment;
  final double? heighBetween;
  final String image, title, subtitle;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Image(image: AssetImage(image), height: size.height * 0.2),
          SizedBox(height: heighBetween),
          Text(
            title,
            textAlign: textAlign,
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: heighBetween),
          Text(
            subtitle,
            textAlign: textAlign,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
