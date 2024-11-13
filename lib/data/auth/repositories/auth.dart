import 'package:dartz/dartz.dart';
import 'package:movie_app_bloc/data/auth/datasources/auth_api_service.dart';
import 'package:movie_app_bloc/data/auth/models/signup_req_params.dart';
import 'package:movie_app_bloc/domain/auth/repositories/auth.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthApiService authApiService;
  AuthRepositoryImpl({
    required this.authApiService,
  });

  @override
  Future<Either> signup(SignupReqParams params) async {
    return await authApiService.signup(params);
  }
}
