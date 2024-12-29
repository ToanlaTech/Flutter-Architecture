import 'package:flutter_clean_architecture/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_clean_architecture/data/sources/auth_firebase_service.dart';
import 'package:flutter_clean_architecture/domain/repository/auth/auth.dart';
import 'package:flutter_clean_architecture/domain/usecases/auth/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
