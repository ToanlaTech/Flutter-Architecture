import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture/data/models/auth/create_user_req.dart';
import 'package:flutter_clean_architecture/domain/repository/auth/auth.dart';
import 'package:flutter_clean_architecture/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return sl<AuthRepository>().signup(params!);
  }
}
