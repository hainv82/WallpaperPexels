// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_collection_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckCollectionData _$CheckCollectionDataFromJson(Map<String, dynamic> json) =>
    CheckCollectionData(
      json['appName'] as String?,
      (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CheckCollectionDataToJson(
        CheckCollectionData instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'collection': instance.collection,
    };
