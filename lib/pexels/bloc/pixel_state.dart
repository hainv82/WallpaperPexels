import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pixel_state.g.dart';

@CopyWith()
class PixelState extends Equatable {
  final String? slugEng;
  @JsonKey(name: 'id')
  final String? idTrend;
  final List<String>? listTrend;
  final List<String>? listTop;
  final List<String>? listDiscover;
  final List<String>? listChallenge;
  final String? title;

  const PixelState(
      {this.slugEng,
      this.idTrend,
      this.listTrend,
      this.listTop,
      this.listDiscover,
      this.listChallenge,
      this.title});

  @override
  List<Object?> get props =>
      [slugEng, idTrend, listTrend, listChallenge, listDiscover, listTop, title];
}
