import 'package:flutter/material.dart';

class CustomFormButton extends StatelessWidget {
  final String innerText;
  final void Function()? onPressed;

  const CustomFormButton(
      {super.key,
      required this.innerText,
      required this.onPressed,
      this.isLoading = false});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: const Color(0xff233743),
        borderRadius: BorderRadius.circular(26),
      ),
      child: isLoading
          ? const Padding(
            padding:  EdgeInsets.symmetric(vertical: 8),
            child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,

                ),
              ),
          )
          : TextButton(
              onPressed: onPressed,
              child: Text(
                innerText,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
    );
  }
}
