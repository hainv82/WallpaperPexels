import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'res_login.model.g.dart';

@JsonSerializable()
class LoginResponse extends Equatable {
  final String? token;

  const LoginResponse(this.token);

  static LoginResponse fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [token];
}
