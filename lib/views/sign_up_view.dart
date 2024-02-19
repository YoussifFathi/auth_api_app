import 'package:auth_api_app/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xffEEF1F3),

      body: SignUpViewBody(),
    );
  }
}
