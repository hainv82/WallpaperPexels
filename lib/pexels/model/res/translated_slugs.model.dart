import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'translated_slugs.model.g.dart';

@JsonSerializable()
class TranslateSlug extends Equatable {
  String? enUS;
  String? ptBR;
  String? deDE;

  TranslateSlug({required this.enUS, required this.ptBR, required this.deDE});

  static TranslateSlug fromJson(Map<String, dynamic> json) =>
      _$TranslateSlugFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [enUS, ptBR, deDE];
}
