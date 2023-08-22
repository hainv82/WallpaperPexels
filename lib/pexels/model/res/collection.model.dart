import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collection.model.g.dart';

@JsonSerializable()
class Collection extends Equatable{
  @JsonKey(name: 'nameCollection')
  final String nameCollection;
  @JsonKey(name: 'uriCollection')
  final String uriCollection;

  const Collection({required this.nameCollection, required this.uriCollection});

  static Collection fromJson(Map<String, dynamic> json) => _$CollectionFromJson(json);
  @override
  List<Object?> get props => [nameCollection, uriCollection];
}