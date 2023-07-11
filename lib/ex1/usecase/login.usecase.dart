// import 'package:z_core/ex1/model/req/login_req.model.dart';
// import 'package:z_core/ex1/model/res/res_login.model.dart';
// import 'package:z_core/ex1/repository/ex1_regis_repo.dart';
// import 'package:z_core/zcore/domain/usecase.base.dart';
// import 'package:z_core/zcore/lib/di/di_module.dart';
//
// class LoginUsecase extends UseCase<LoginResponse>{
//   final LoginRequest request;
//
//   LoginUsecase(this.request);
//
//   final _repo=getIt.get<RegisterRepo>();
//
//   @override
//   Future<LoginResponse> execute() {
//     return _repo.login(request);
//   }
// }