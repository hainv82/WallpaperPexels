// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_trend.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataTrend _$DataTrendFromJson(Map<String, dynamic> json) => DataTrend(
      id: json['id'] as String?,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : AttributeTrend.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataTrendToJson(DataTrend instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
    };
