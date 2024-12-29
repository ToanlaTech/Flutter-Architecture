import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture/data/models/auth/signin_user_req.dart';
import 'package:flutter_clean_architecture/domain/repository/auth/auth.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}