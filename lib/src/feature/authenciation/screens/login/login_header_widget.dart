import "package:code/src/constants/image_strings.dart";
import "package:code/src/constants/text_strings.dart";
import "package:flutter/material.dart";

class loginHeaderWidget extends StatelessWidget {
  const loginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            image: AssetImage(twelcomeScreenImage), height: size.height * 0.5),
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
