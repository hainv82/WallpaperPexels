import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attribute_trend.model.g.dart';

@JsonSerializable()
class AttributeTrend extends Equatable {
  final String? term;
  @JsonKey(name: 'photo_id')
  final int? photoId;
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  const AttributeTrend({this.term, this.photoId, this.imageUrl});

  // factory AttributeTrend.fromJson(Map<String, dynamic> json) => _$AttributeTrendFromJson(json);
  static AttributeTrend fromJson(Map<String, dynamic> json) => _$AttributeTrendFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [term, photoId, imageUrl];
}
