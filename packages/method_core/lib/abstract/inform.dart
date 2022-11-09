import 'package:freezed_annotation/freezed_annotation.dart';

part 'inform.freezed.dart';

abstract class Inform {
  String get name;
  String get description;
}

@freezed
class Information with _$Information, Inform {
  @Implements<Inform>()
  const factory Information({
    required String name,
    required String description,
  }) = _Information;
}
