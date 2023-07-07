import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'res_login.model.g.dart';

@JsonSerializable()
class LoginResponse extends Equatable{
  final String? token;

  LoginResponse(this.token);

  static LoginResponse fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [token];


}