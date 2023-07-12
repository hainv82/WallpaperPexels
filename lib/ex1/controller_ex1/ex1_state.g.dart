// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ex1_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EX1StateCWProxy {
  EX1State id(String id);

  EX1State tokenLog(String tokenLog);

  EX1State tokenResgis(String tokenResgis);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EX1State(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EX1State(...).copyWith(id: 12, name: "My name")
  /// ````
  EX1State call({
    String? id,
    String? tokenLog,
    String? tokenResgis,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEX1State.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEX1State.copyWith.fieldName(...)`
class _$EX1StateCWProxyImpl implements _$EX1StateCWProxy {
  final EX1State _value;

  const _$EX1StateCWProxyImpl(this._value);

  @override
  EX1State id(String id) => this(id: id);

  @override
  EX1State tokenLog(String tokenLog) => this(tokenLog: tokenLog);

  @override
  EX1State tokenResgis(String tokenResgis) => this(tokenResgis: tokenResgis);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EX1State(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EX1State(...).copyWith(id: 12, name: "My name")
  /// ````
  EX1State call({
    Object? id = const $CopyWithPlaceholder(),
    Object? tokenLog = const $CopyWithPlaceholder(),
    Object? tokenResgis = const $CopyWithPlaceholder(),
  }) {
    return EX1State(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      tokenLog: tokenLog == const $CopyWithPlaceholder() || tokenLog == null
          ? _value.tokenLog
          // ignore: cast_nullable_to_non_nullable
          : tokenLog as String,
      tokenResgis:
          tokenResgis == const $CopyWithPlaceholder() || tokenResgis == null
              ? _value.tokenResgis
              // ignore: cast_nullable_to_non_nullable
              : tokenResgis as String,
    );
  }
}

extension $EX1StateCopyWith on EX1State {
  /// Returns a callable class that can be used as follows: `instanceOfEX1State.copyWith(...)` or like so:`instanceOfEX1State.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EX1StateCWProxy get copyWith => _$EX1StateCWProxyImpl(this);
}
