import 'package:auth_api_app/core/utils/locator_service.dart';
import 'package:auth_api_app/cubits/login_cubit/login_cubit.dart';
import 'package:auth_api_app/repos/login_repo/login_repo_imp.dart';
import 'package:auth_api_app/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffEEF1F3),
      body: BlocProvider(
        create: (context) => LoginCubit(getIt.get<LoginRepoImp>()),
        child: const SignInViewBody(),
      ),
    );
  }
}

