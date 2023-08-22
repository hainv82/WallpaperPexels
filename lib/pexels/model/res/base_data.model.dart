import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:z_core/pexels/model/res/collection.model.dart';

part 'base_data.model.g.dart';

@JsonSerializable()
class BaseData extends Equatable{
  @JsonKey(name: 'nameApp')
  final String nameApp;
  // final List<Collection> collection;

  const BaseData({required this.nameApp});
  // const BaseData({required this.nameApp, required this.collection});

  static BaseData fromJson(Map<String, dynamic> json) => _$BaseDataFromJson(json);

  @override
  List<Object?> get props => [nameApp];
  // List<Object?> get props => [nameApp, collection];

}