import 'package:flutter/material.dart';

class CustomPickImage extends StatelessWidget {
  const CustomPickImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      child: Stack(
        children: [
          Image.asset("assets/images/avatar.png"),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 3),
                  color: Colors.blue, borderRadius: BorderRadius.circular(100)),
              child: const Icon(
                Icons.camera_alt_rounded,
                size: 45,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
