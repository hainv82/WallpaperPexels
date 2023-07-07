import 'package:z_core/ex1/model/res/res_register.model.dart';
import 'package:z_core/ex1/repository/ex1_regis_repo.dart';
import 'package:z_core/zcore/domain/usecase.base.dart';
import 'package:z_core/zcore/lib/di/di_module.dart';

import '../model/req/register_req.model.dart';

class RegisUsecase extends UseCase<ResRegister>{
  RegisUsecase(this.request);

  final RegisterUserRequest request;
  final _repository =getIt.get<RegisterRepo>();

  @override
  Future<ResRegister> execute() {
    return _repository.regis(request);
  }

}