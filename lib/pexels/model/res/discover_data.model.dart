import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:z_core/pexels/model/res/translated_slugs.model.dart';

part 'discover_data.model.g.dart';

@JsonSerializable()
class DiscoverData extends Equatable {
  final TranslateSlug? pageProps;

  const DiscoverData({required this.pageProps});

  static DiscoverData fromJson(Map<String, dynamic> json) =>
      _$DiscoverDataFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [pageProps];
}
