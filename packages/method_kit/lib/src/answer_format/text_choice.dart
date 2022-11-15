import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_choice.freezed.dart';
part 'text_choice.g.dart';

@freezed
class TextChoice with _$TextChoice {
  const TextChoice._();

  const factory TextChoice({
    required final String text,
    required final String value,
  }) = _TextChoice;

  factory TextChoice.fromJson(Map<String, dynamic> json) =>
      _$TextChoiceFromJson(json);
}
