
import 'package:auth_api_app/repos/login_repo/login_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){

  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<LoginRepoImp>(LoginRepoImp(
    dio: getIt.get<Dio>(),
  ));
}
