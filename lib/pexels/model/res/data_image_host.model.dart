import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_image_host.model.g.dart';

@JsonSerializable()
class DataImageHost extends Equatable {
  @JsonKey(name: 'listTrend')
  final List<String>? listImg;

  const DataImageHost(this.listImg);

  static DataImageHost fromJson(Map<String, dynamic> json) =>
      _$DataImageHostFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [listImg];
}
