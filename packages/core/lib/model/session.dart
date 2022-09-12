import 'package:core/model/entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../abstract/define.dart';
import '../abstract/identify.dart';
import '../abstract/locate.dart';
import 'exercise.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session
    with _$Session, Identify, Locate, DefineDocument<Entry, Exercise> {
  const Session._();

  const factory Session({
    required final Exercise template,
    required final List<Entry> definitions,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Session;

  factory Session.create({
    required final Exercise template,
    required String collectionSlug,
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
        uuid: uuid ?? const Uuid().v4(),
      );

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  @override
  String get collectionSlug => "session";
}
