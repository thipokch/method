part of 'answer_format.dart';

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
