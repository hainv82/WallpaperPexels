import 'package:z_core/ex1/model/req/login_req.model.dart';
import 'package:z_core/ex1/model/req/register_req.model.dart';
import 'package:z_core/ex1/model/res/res_login.model.dart';
import 'package:z_core/ex1/model/res/res_register.model.dart';
import 'package:z_core/ex1/repository/ex1_repo.dart';
import 'package:z_core/helper/app_config.dart';
import 'package:z_core/zcore/gateway2/api_gateway2.dart';
import 'package:z_core/zcore/gateway2/app_gateway2.dart';


class RegisterRepo extends EX1Repository {
  @override
  Future<ResRegister> regis(RegisterUserRequest request) async {
    // final apix = AppGateway(
    //     resource: RegisterResource(),
    //     method: HTTPMethod.post,
    //     params: request.toJson());
    final api = AppGateway2(
        endpoint: "api/register",
        prefix: getBaseUrl(),
        method: HTTPMethod.post,
        data: request.toJson());
    var response = await api.execute();
    return ResRegister.fromJson(response.data);
  }

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    // final api = AppGateway(resource: LoginResource(),
    //     method: HTTPMethod.post,
    //     params: request.toJson());
    final api = AppGateway2(
        endpoint: "api/login",
        prefix: getBaseUrl(),
        method: HTTPMethod.post,
        data: request.toJson());
    var response = await api.execute();
    return LoginResponse.fromJson(response.data);
  }
}
