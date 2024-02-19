import 'package:auth_api_app/core/errors/failures.dart';
import 'package:auth_api_app/core/utils/api_keys.dart';
import 'package:auth_api_app/repos/login_repo/login_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepoImp extends LoginRepo{
  LoginRepoImp({required this.dio});

  final Dio dio;
  @override
  Future<Either<Failures, dynamic>> login(String email, String password) async {
    try{

        Response response = await dio.post(ApiKeys.baseUrl + ApiKeys.loginEndPoint,data: {
          'email':email,
          'password':password,
        });
    return right(response.data);

    }on DioException catch(e){
      return left(ServerSideError.fromDioException(e));
    } catch(e){
      return left(ServerSideError(e.toString()));
    }
  }


}