// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_trend.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeTrend _$AttributeTrendFromJson(Map<String, dynamic> json) =>
    AttributeTrend(
      term: json['term'] as String?,
      photoId: json['photo_id'] as int?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$AttributeTrendToJson(AttributeTrend instance) =>
    <String, dynamic>{
      'term': instance.term,
      'photo_id': instance.photoId,
      'image_url': instance.imageUrl,
    };
