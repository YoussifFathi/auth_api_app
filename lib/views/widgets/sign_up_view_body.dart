import 'package:auth_api_app/views/widgets/already_have_an_account_widget.dart';
import 'package:auth_api_app/views/widgets/custom_form_button.dart';
import 'package:auth_api_app/views/widgets/custom_input_field.dart';
import 'package:auth_api_app/views/widgets/custom_pick_image.dart';
import 'package:auth_api_app/views/widgets/forget_password.dart';
import 'package:auth_api_app/views/widgets/heading_image.dart';
import 'package:auth_api_app/views/widgets/page_heading.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HeadingImage(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              children: [
                const PageHeading(
                  title: 'Sign-Up',
                ),
                const CustomPickImage(),
                const CustomInputField(
                    labelText: "Email", hintText: "Your email"),
                const CustomInputField(
                    labelText: "Name", hintText: "Your name"),
                const CustomInputField(
                    labelText: "Phone Number", hintText: "Your Phone Number"),
                const CustomInputField(
                    labelText: "Password",
                    hintText: "Your password",
                    suffixIcon: true,
                    obscureText: true),
                const CustomInputField(
                    labelText: "Confirm Password",
                    hintText: "Confirm Your password",
                    suffixIcon: true,
                    obscureText: true),
                const ForgetPassword(),
                CustomFormButton(
                  innerText: "Register",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 18,
                ),
                const AlreadyHaveAnAccountWidget(),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

