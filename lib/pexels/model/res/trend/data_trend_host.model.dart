import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_trend_host.model.g.dart';

@JsonSerializable()
class DataTrendHost extends Equatable{
  final List<String>? listTrend;

  const DataTrendHost({this.listTrend});

  static DataTrendHost fromJson(Map<String, dynamic> json) => _$DataTrendHostFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [listTrend];
}
