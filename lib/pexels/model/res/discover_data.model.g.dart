// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverData _$DiscoverDataFromJson(Map<String, dynamic> json) => DiscoverData(
      pageProps: json['pageProps'] == null
          ? null
          : TranslateSlug.fromJson(json['pageProps'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiscoverDataToJson(DiscoverData instance) =>
    <String, dynamic>{
      'pageProps': instance.pageProps,
    };
