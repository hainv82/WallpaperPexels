// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixel_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PixelStateCWProxy {
  PixelState idTrend(String? idTrend);

  PixelState listTrend(List<String>? listTrend);

  PixelState slugEng(String? slugEng);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PixelState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PixelState(...).copyWith(id: 12, name: "My name")
  /// ````
  PixelState call({
    String? idTrend,
    List<String>? listTrend,
    String? slugEng,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPixelState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPixelState.copyWith.fieldName(...)`
class _$PixelStateCWProxyImpl implements _$PixelStateCWProxy {
  final PixelState _value;

  const _$PixelStateCWProxyImpl(this._value);

  @override
  PixelState idTrend(String? idTrend) => this(idTrend: idTrend);

  @override
  PixelState listTrend(List<String>? listTrend) => this(listTrend: listTrend);

  @override
  PixelState slugEng(String? slugEng) => this(slugEng: slugEng);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PixelState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PixelState(...).copyWith(id: 12, name: "My name")
  /// ````
  PixelState call({
    Object? idTrend = const $CopyWithPlaceholder(),
    Object? listTrend = const $CopyWithPlaceholder(),
    Object? slugEng = const $CopyWithPlaceholder(),
  }) {
    return PixelState(
      idTrend: idTrend == const $CopyWithPlaceholder()
          ? _value.idTrend
          // ignore: cast_nullable_to_non_nullable
          : idTrend as String?,
      listTrend: listTrend == const $CopyWithPlaceholder()
          ? _value.listTrend
          // ignore: cast_nullable_to_non_nullable
          : listTrend as List<String>?,
      slugEng: slugEng == const $CopyWithPlaceholder()
          ? _value.slugEng
          // ignore: cast_nullable_to_non_nullable
          : slugEng as String?,
    );
  }
}

extension $PixelStateCopyWith on PixelState {
  /// Returns a callable class that can be used as follows: `instanceOfclass PixelState extends Equatable.name.copyWith(...)` or like so:`instanceOfclass PixelState extends Equatable.name.copyWith.fieldName(...)`.
  _$PixelStateCWProxy get copyWith => _$PixelStateCWProxyImpl(this);
}
