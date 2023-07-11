import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pixel_state.g.dart';

@CopyWith()
class PixelState extends Equatable{
  final String? slugEng;
  @JsonKey(name: 'id')
  final String? idTrend;
  final List<String>? listTrend;

  const PixelState({this.slugEng, this.idTrend, this.listTrend});


  @override
  List<Object?> get props => [slugEng, idTrend, listTrend];

}