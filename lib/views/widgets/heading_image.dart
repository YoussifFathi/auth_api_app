import 'package:flutter/material.dart';

class HeadingImage extends StatelessWidget {
  const HeadingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Image.asset(
      'assets/images/friendship.png',
      width: double.infinity,
      height: size.height * 0.3,
    );
  }
}
