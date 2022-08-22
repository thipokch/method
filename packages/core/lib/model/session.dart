import 'package:core/abstract/uniform.dart';
import 'package:core/model/entry.dart';
import 'package:core/model/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../abstract/define.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  @Implements<Uniform>()
  @Implements<DefineDocument<Entry, Exercise>>()
  const factory Session._({
    required final Exercise template,
    required final List<Entry> definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    required final String id,
    required final String uuid,
  }) = _Session;

  factory Session.create({
    required final Exercise template,
    final List<Entry>? definitions,
    required final String collectionSlug,
    required final String hierarchyPath,
    required final String id,
    final String? uuid,
  }) =>
      Session._(
        template: template,
        definitions: definitions ?? [],
        collectionSlug: collectionSlug,
        hierarchyPath: hierarchyPath,
        id: id,
        uuid: uuid ?? const Uuid().v4(),
      );
}
