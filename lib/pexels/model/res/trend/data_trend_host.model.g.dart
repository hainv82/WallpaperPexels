// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_trend_host.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataTrendHost _$DataTrendHostFromJson(Map<String, dynamic> json) =>
    DataTrendHost(
      listTrend: (json['listTrend'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DataTrendHostToJson(DataTrendHost instance) =>
    <String, dynamic>{
      'listTrend': instance.listTrend,
    };
