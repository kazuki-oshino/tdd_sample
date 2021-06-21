// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'calc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalcStateTearOff {
  const _$CalcStateTearOff();

  _CalcState call({required String text}) {
    return _CalcState(
      text: text,
    );
  }
}

/// @nodoc
const $CalcState = _$CalcStateTearOff();

/// @nodoc
mixin _$CalcState {
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalcStateCopyWith<CalcState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcStateCopyWith<$Res> {
  factory $CalcStateCopyWith(CalcState value, $Res Function(CalcState) then) =
      _$CalcStateCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$CalcStateCopyWithImpl<$Res> implements $CalcStateCopyWith<$Res> {
  _$CalcStateCopyWithImpl(this._value, this._then);

  final CalcState _value;
  // ignore: unused_field
  final $Res Function(CalcState) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CalcStateCopyWith<$Res> implements $CalcStateCopyWith<$Res> {
  factory _$CalcStateCopyWith(
          _CalcState value, $Res Function(_CalcState) then) =
      __$CalcStateCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$CalcStateCopyWithImpl<$Res> extends _$CalcStateCopyWithImpl<$Res>
    implements _$CalcStateCopyWith<$Res> {
  __$CalcStateCopyWithImpl(_CalcState _value, $Res Function(_CalcState) _then)
      : super(_value, (v) => _then(v as _CalcState));

  @override
  _CalcState get _value => super._value as _CalcState;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_CalcState(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CalcState with DiagnosticableTreeMixin implements _CalcState {
  const _$_CalcState({required this.text});

  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalcState(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalcState'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalcState &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$CalcStateCopyWith<_CalcState> get copyWith =>
      __$CalcStateCopyWithImpl<_CalcState>(this, _$identity);
}

abstract class _CalcState implements CalcState {
  const factory _CalcState({required String text}) = _$_CalcState;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CalcStateCopyWith<_CalcState> get copyWith =>
      throw _privateConstructorUsedError;
}
