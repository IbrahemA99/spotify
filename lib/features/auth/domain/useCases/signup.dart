import 'package:dartz/dartz.dart';
import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/features/auth/data/models/create_user_req.dart';
import 'package:spotify/features/auth/domain/repo/auth.dart';

import '../../../../core/di/service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq> {


  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepository>().signup(params!);
  }

}