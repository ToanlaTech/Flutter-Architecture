import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/models/auth/create_user_req.dart';
import 'package:flutter_clean_architecture/data/models/auth/signin_user_req.dart';
import 'package:flutter_clean_architecture/data/sources/auth_firebase_service.dart';
import 'package:flutter_clean_architecture/domain/repository/auth/auth.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    return await sl<AuthFirebaseService>().signin(signinUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }

  @override
  Future<Either> getUser() async {
    return await sl<AuthFirebaseService>().getUser();
  }
}
