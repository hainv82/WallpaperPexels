import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'res_register.model.g.dart';

@JsonSerializable()
class ResRegister extends Equatable{

  const ResRegister(this.id, this.token);

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "token")
  final String token;

  static ResRegister fromJson(Map<String, dynamic> json) =>
      _$ResRegisterFromJson(json);

  @override
// TODO: implement props
  List<Object?> get props => [id, token];

}


