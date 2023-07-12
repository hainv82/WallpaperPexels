// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixel_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PixelStateCWProxy {
  PixelState idTrend(String? idTrend);

  PixelState listChallenge(List<String>? listChallenge);

  PixelState listDiscover(List<String>? listDiscover);

  PixelState listTop(List<String>? listTop);

  PixelState listTrend(List<String>? listTrend);

  PixelState slugEng(String? slugEng);

  PixelState title(String title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PixelState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PixelState(...).copyWith(id: 12, name: "My name")
  /// ````
  PixelState call({
    String? idTrend,
    List<String>? listChallenge,
    List<String>? listDiscover,
    List<String>? listTop,
    List<String>? listTrend,
    String? slugEng,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPixelState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPixelState.copyWith.fieldName(...)`
class _$PixelStateCWProxyImpl implements _$PixelStateCWProxy {
  final PixelState _value;

  const _$PixelStateCWProxyImpl(this._value);

  @override
  PixelState idTrend(String? idTrend) => this(idTrend: idTrend);

  @override
  PixelState listChallenge(List<String>? listChallenge) =>
      this(listChallenge: listChallenge);

  @override
  PixelState listDiscover(List<String>? listDiscover) =>
      this(listDiscover: listDiscover);

  @override
  PixelState listTop(List<String>? listTop) => this(listTop: listTop);

  @override
  PixelState listTrend(List<String>? listTrend) => this(listTrend: listTrend);

  @override
  PixelState slugEng(String? slugEng) => this(slugEng: slugEng);

  @override
  PixelState title(String title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PixelState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PixelState(...).copyWith(id: 12, name: "My name")
  /// ````
  PixelState call({
    Object? idTrend = const $CopyWithPlaceholder(),
    Object? listChallenge = const $CopyWithPlaceholder(),
    Object? listDiscover = const $CopyWithPlaceholder(),
    Object? listTop = const $CopyWithPlaceholder(),
    Object? listTrend = const $CopyWithPlaceholder(),
    Object? slugEng = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return PixelState(
      idTrend: idTrend == const $CopyWithPlaceholder()
          ? _value.idTrend
          // ignore: cast_nullable_to_non_nullable
          : idTrend as String?,
      listChallenge: listChallenge == const $CopyWithPlaceholder()
          ? _value.listChallenge
          // ignore: cast_nullable_to_non_nullable
          : listChallenge as List<String>?,
      listDiscover: listDiscover == const $CopyWithPlaceholder()
          ? _value.listDiscover
          // ignore: cast_nullable_to_non_nullable
          : listDiscover as List<String>?,
      listTop: listTop == const $CopyWithPlaceholder()
          ? _value.listTop
          // ignore: cast_nullable_to_non_nullable
          : listTop as List<String>?,
      listTrend: listTrend == const $CopyWithPlaceholder()
          ? _value.listTrend
          // ignore: cast_nullable_to_non_nullable
          : listTrend as List<String>?,
      slugEng: slugEng == const $CopyWithPlaceholder()
          ? _value.slugEng
          // ignore: cast_nullable_to_non_nullable
          : slugEng as String?,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
    );
  }
}

extension $PixelStateCopyWith on PixelState {
  /// Returns a callable class that can be used as follows: `instanceOfPixelState.copyWith(...)` or like so:`instanceOfPixelState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PixelStateCWProxy get copyWith => _$PixelStateCWProxyImpl(this);
}
