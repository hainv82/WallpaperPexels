import 'package:z_core/zcore/domain/resource.base.dart';

class RegisterResource extends Resource{
  RegisterResource():super("/api/register");
}

class LoginResource extends Resource{
  LoginResource():super("/api/login");
}

class GetListResource extends Resource{
  GetListResource():super("api/users");
}