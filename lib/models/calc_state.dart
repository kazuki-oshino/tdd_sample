import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calc_state.freezed.dart';

@freezed
class CalcState with _$CalcState {
  const factory CalcState({
    required String text,
  }) = _CalcState;
}
