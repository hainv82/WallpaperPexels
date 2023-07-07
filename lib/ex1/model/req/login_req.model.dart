import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_req.model.g.dart';

@JsonSerializable()

class LoginRequest extends Equatable{

  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "password")
  final String password;

  const LoginRequest({required this.email, required this.password});
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [email, password];


}