import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      padding:  EdgeInsets.only(right: size.width * 0.1,top: 16,bottom: 20),
      child: GestureDetector(
        onTap: () {

        },
        child: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forget Passowrd",
              style: TextStyle(
                color: Color(0xff939393),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }
}
