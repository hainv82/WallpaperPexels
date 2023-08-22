import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:z_core/pexels/model/res/collection.model.dart';

part 'check_collection_data.model.g.dart';

@JsonSerializable()
class CheckCollectionData extends Equatable{
  @JsonKey(name: 'appName')
  final String? appName;
  @JsonKey(name: 'collection')
  final List<Collection>? collection;

  const CheckCollectionData(this.appName, this.collection);

  static CheckCollectionData fromJson(Map<String, dynamic> json) => _$CheckCollectionDataFromJson(json);

  @override
  List<Object?> get props => [appName, collection];
}