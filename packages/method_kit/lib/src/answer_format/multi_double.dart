import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_double.freezed.dart';
part 'multi_double.g.dart';

@freezed
class MultiDouble with _$MultiDouble {
  const factory MultiDouble({
    required final String text,
    required final double value,
  }) = _MultiDouble;

  factory MultiDouble.fromJson(Map<String, dynamic> json) =>
      _$MultiDoubleFromJson(json);
}
