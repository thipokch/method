import 'package:core/abstract/uniform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry.freezed.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({
    required Uniform uniform,
  }) = _Entry;
}
