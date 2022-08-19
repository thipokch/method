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
    required Exercise template,
    required List<Entry> definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    required String uuid,
  }) = _Session;

  factory Session.create({
    required Exercise template,
    List<Entry>? definitions,
    required String collectionSlug,
    required String hierarchyPath,
    required String id,
    String? uuid,
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
