// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_image_host.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataImageHost _$DataImageHostFromJson(Map<String, dynamic> json) =>
    DataImageHost(
      (json['listTrend'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DataImageHostToJson(DataImageHost instance) =>
    <String, dynamic>{
      'listTrend': instance.listImg,
    };
