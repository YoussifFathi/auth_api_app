import 'package:auth_api_app/core/cache/cache_helper.dart';
import 'package:auth_api_app/core/errors/failures.dart';
import 'package:auth_api_app/core/utils/api_keys.dart';
import 'package:auth_api_app/models/user_model.dart';
import 'package:auth_api_app/repos/login_repo/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;
  //Sign In
  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
  //Sign in email
  TextEditingController signInEmail = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();

  Future<void> login()async{
    emit(LoginLoading());
    var result = await loginRepo.login(signInEmail.text, signInPassword.text);
    result.fold((l){
      emit(LoginFailure(errorMessage: l.errorMessage));
    } , (r) {
      String token = r['token'];
      UserModel userModel = UserModel.fromJson(JwtDecoder.decode(token));
      CacheHelper().saveData(key: 'userToken', value: token);
      CacheHelper().saveData(key: 'userId', value: userModel.id);
      emit(LoginSuccessful());
    });
  }

}
