import 'package:auth_api_app/views/sign_up_view.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don\'t have an account ? ',
            style: TextStyle(
                fontSize: 13,
                color: Color(0xff939393),
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpView(),
                ),
              )
            },
            child: const Text(
              'Sign-up',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff748288),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
