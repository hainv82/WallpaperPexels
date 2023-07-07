import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_req.model.g.dart';

@JsonSerializable()

class RegisterUserRequest extends Equatable{
  const RegisterUserRequest({required this.email, required this.password});

  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "password")
  final String password;

  Map<String, dynamic> toJson() => _$RegisterUserRequestToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [email, password];


}