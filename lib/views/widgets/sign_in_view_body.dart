import 'package:auth_api_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_api_app/cubits/login_cubit/login_cubit.dart';
import 'package:auth_api_app/core/widgets/custom_error_dialog.dart';
import 'package:auth_api_app/core/widgets/custom_success_dialog.dart';
import 'package:auth_api_app/views/profile_view.dart';
import 'package:auth_api_app/views/widgets/custom_form_button.dart';
import 'package:auth_api_app/views/widgets/custom_input_field.dart';
import 'package:auth_api_app/views/widgets/dont_have_an_account.dart';
import 'package:auth_api_app/views/widgets/forget_password.dart';
import 'package:auth_api_app/views/widgets/heading_image.dart';
import 'package:auth_api_app/views/widgets/page_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessful) {
          showSuccessDialog(context);
        } else if (state is LoginFailure) {
          showErrorDialog(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        LoginCubit loginCubit = BlocProvider.of<LoginCubit>(context);
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
                child: Form(
                  key: loginCubit.signInFormKey,
                  child: Column(
                    children: [
                      const PageHeading(
                        title: 'Sign-in',
                      ),
                       CustomInputField(
                          labelText: "Email", hintText: "Your email",controller: loginCubit.signInEmail),
                       CustomInputField(
                          labelText: "Password",
                          hintText: "Your password",
                          suffixIcon: true,
                          obscureText: true,controller: loginCubit.signInPassword),
                      const ForgetPassword(),
                      CustomFormButton(
                        innerText: "Login",
                        isLoading: state is LoginLoading,
                        onPressed: () {
                          loginCubit.login();
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const ProfileView(),
                          //     ));
                        },
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const DontHaveAnAccountWidget(),
                      const SizedBox(
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

