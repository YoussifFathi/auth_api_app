import 'package:auth_api_app/core/cache/cache_helper.dart';
import 'package:auth_api_app/core/utils/locator_service.dart';
import 'package:auth_api_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:auth_api_app/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInView(),
      ),
    );
  }
}
