import 'package:core/model/entry.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../abstract/define.dart';
import '../abstract/identify.dart';
import '../abstract/locate.dart';
import '../util/uuid.dart';
import 'exercise.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session, Identify, Locate, Define<Entry> {
  const Session._();

  const factory Session({
    required final Exercise template,
    required final List<Entry> definitions,
    required String hierarchyPath,
    required String id,
    @UuidConverter() UuidValue? uuid,
  }) = _Session;

  factory Session.create({
    required final Exercise template,
    final List<Entry>? definitions,
    required final String hierarchyPath,
    required final String id,
    final String? uuid,
  }) =>
      Session(
        template: template,
        definitions: definitions ?? [],
        hierarchyPath: hierarchyPath,
        id: id,
        uuid: uuid != null && uuid.isNotEmpty
            ? UuidValue(uuid)
            : const Uuid().v4obj(),
      );

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  @override
  String get collectionSlug => "session";
}
