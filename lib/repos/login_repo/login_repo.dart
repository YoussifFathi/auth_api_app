import 'package:auth_api_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class LoginRepo {


  Future<Either<Failures,dynamic>> login(String email,String password);
}