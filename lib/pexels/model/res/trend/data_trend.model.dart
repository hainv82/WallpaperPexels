import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:z_core/pexels/model/res/trend/attribute_trend.model.dart';

part 'data_trend.model.g.dart';
@JsonSerializable()
class DataTrend extends Equatable {
  final String? id;
  final String? type;
  final AttributeTrend? attributes;

  const DataTrend({this.id, this.type, this.attributes});

  static DataTrend fromJson(Map<String, dynamic> json) => _$DataTrendFromJson(json);
  // factory DataTrend.fromJson(Map<String, dynamic> json) => _$DataTrendFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [id, type, attributes];
}
