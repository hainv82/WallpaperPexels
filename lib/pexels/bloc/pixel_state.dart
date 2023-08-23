import 'package:equatable/equatable.dart';
import 'package:z_core/pexels/model/res/base_data.model.dart';
import 'package:z_core/pexels/model/res/check_collection_data.model.dart';
import 'package:z_core/pexels/model/res/collection.model.dart';

abstract class PixelState extends Equatable {
  const PixelState();

  @override
  List<Object?> get props => [];
}

class PixelInitial extends PixelState {
  const PixelInitial();
}

class LoadListImgTrend extends PixelState {
  final List<String>? listTrend;

  const LoadListImgTrend(
      {this.listTrend});

  @override
  List<Object?> get props => [listTrend];
}

class CheckCollectionState extends PixelState{
  final String? appName;
  final List<Collection>? listCollection;

  const CheckCollectionState({this.appName, this.listCollection});

  @override
  List<Object?> get props => [appName, listCollection];
}

class LoadListImgTop extends PixelState {
  final List<String>? listTop;

  const LoadListImgTop({this.listTop});

  @override
  List<Object?> get props => [listTop];
}

class LoadListImgDiscover extends PixelState {
  final List<String>? listDiscover;

  const LoadListImgDiscover({this.listDiscover});

  @override
  List<Object?> get props => [listDiscover];
}

class LoadListImgChallenge extends PixelState {
  final List<String>? listChallenge;

  const LoadListImgChallenge({this.listChallenge});

  @override
  List<Object?> get props => [listChallenge];
}

class TitleState extends PixelState {
  final String? title;

  const TitleState({this.title});

  @override
  List<Object?> get props => [title];
}

class GetBaseDataState extends PixelState{
  final BaseData baseDataState;

  const GetBaseDataState({required this.baseDataState});

  @override
  List<Object?> get props => [baseDataState];
}

class DataViewState extends PixelState{
  final List<String>? listData;

  const DataViewState({this.listData});
}

// part 'pixel_state.g.dart';

// @CopyWith()
// class PixelState extends Equatable {
//   final String? slugEng;
//   @JsonKey(name: 'id')
//   final String? idTrend;
//   final List<String>? listTrend;
//   final List<String>? listTop;
//   final List<String>? listDiscover;
//   final List<String>? listChallenge;
//   final String? title;
//
//   const PixelState(
//       {this.slugEng,
//       this.idTrend,
//       this.listTrend,
//       this.listTop,
//       this.listDiscover,
//       this.listChallenge,
//       this.title});
//
//   @override
//   List<Object?> get props =>
//       [slugEng, idTrend, listTrend, listChallenge, listDiscover, listTop, title];
// }
