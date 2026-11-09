import 'package:dartz/dartz.dart';
import 'package:spotify/features/auth/data/models/create_user_req.dart';
import 'package:spotify/features/auth/data/models/signin_user_req.dart';
import 'package:spotify/features/auth/data/sources/auth_firebase_service.dart';
import 'package:spotify/features/auth/domain/repo/auth.dart';
import 'package:spotify/core/di/service_locator.dart ';

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