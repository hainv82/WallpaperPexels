// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_req.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserRequest _$RegisterUserRequestFromJson(Map<String, dynamic> json) =>
    RegisterUserRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegisterUserRequestToJson(
        RegisterUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
