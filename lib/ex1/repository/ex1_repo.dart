import 'package:z_core/ex1/model/req/login_req.model.dart';
import 'package:z_core/ex1/model/req/register_req.model.dart';
import 'package:z_core/ex1/model/res/res_login.model.dart';
import 'package:z_core/ex1/model/res/res_register.model.dart';

abstract class EX1Repository{
  Future<ResRegister> regis(RegisterUserRequest request);
  Future<LoginResponse> login(LoginRequest request);
}