import 'package:dartz/dartz.dart';
import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/features/auth/data/models/signin_user_req.dart';
import 'package:spotify/features/auth/domain/repo/auth.dart';

import '../../../../core/di/service_locator.dart';

class SigninUseCase implements UseCase<Either,SigninUserReq> {


  @override
  Future<Either> call({SigninUserReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }

}