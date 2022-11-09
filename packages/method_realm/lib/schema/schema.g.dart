// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class DbEntry extends _DbEntry with RealmEntity, RealmObject {
  DbEntry(
    String hierarchyPath,
    String id,
    Uuid uuid,
    DateTime createdAt,
    DateTime readAt,
    DateTime updatedAt, {
    DbTask? template,
    DateTime? commitedAt,
    DateTime? deletedAt,
    Iterable<String> definitions = const [],
  }) {
    RealmObject.set(this, 'template', template);
    RealmObject.set(this, 'hierarchyPath', hierarchyPath);
    RealmObject.set(this, 'id', id);
    RealmObject.set(this, 'uuid', uuid);
    RealmObject.set(this, 'createdAt', createdAt);
    RealmObject.set(this, 'readAt', readAt);
    RealmObject.set(this, 'updatedAt', updatedAt);
    RealmObject.set(this, 'commitedAt', commitedAt);
    RealmObject.set(this, 'deletedAt', deletedAt);
    RealmObject.set<RealmList<String>>(
        this, 'definitions', RealmList<String>(definitions));
  }

  DbEntry._();

  @override
  DbTask? get template => RealmObject.get<DbTask>(this, 'template') as DbTask?;
  @override
  set template(covariant DbTask? value) =>
      RealmObject.set(this, 'template', value);

  @override
  RealmList<String> get definitions =>
      RealmObject.get<String>(this, 'definitions') as RealmList<String>;
  @override
  set definitions(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get hierarchyPath =>
      RealmObject.get<String>(this, 'hierarchyPath') as String;
  @override
  set hierarchyPath(String value) =>
      RealmObject.set(this, 'hierarchyPath', value);

  @override
  String get id => RealmObject.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObject.set(this, 'id', value);

  @override
  Uuid get uuid => RealmObject.get<Uuid>(this, 'uuid') as Uuid;
  @override
  set uuid(Uuid value) => RealmObject.set(this, 'uuid', value);

  @override
  DateTime get createdAt =>
      RealmObject.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) => RealmObject.set(this, 'createdAt', value);

  @override
  DateTime get readAt => RealmObject.get<DateTime>(this, 'readAt') as DateTime;
  @override
  set readAt(DateTime value) => RealmObject.set(this, 'readAt', value);

  @override
  DateTime get updatedAt =>
      RealmObject.get<DateTime>(this, 'updatedAt') as DateTime;
  @override
  set updatedAt(DateTime value) => RealmObject.set(this, 'updatedAt', value);

  @override
  DateTime? get commitedAt =>
      RealmObject.get<DateTime>(this, 'commitedAt') as DateTime?;
  @override
  set commitedAt(DateTime? value) => RealmObject.set(this, 'commitedAt', value);

  @override
  DateTime? get deletedAt =>
      RealmObject.get<DateTime>(this, 'deletedAt') as DateTime?;
  @override
  set deletedAt(DateTime? value) => RealmObject.set(this, 'deletedAt', value);

  @override
  Stream<RealmObjectChanges<DbEntry>> get changes =>
      RealmObject.getChanges<DbEntry>(this);

  @override
  DbEntry freeze() => RealmObject.freezeObject<DbEntry>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(DbEntry._);
    return const SchemaObject(DbEntry, 'DbEntry', [
      SchemaProperty('template', RealmPropertyType.object,
          optional: true, linkTarget: 'DbTask'),
      SchemaProperty('definitions', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('hierarchyPath', RealmPropertyType.string),
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('uuid', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('readAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
      SchemaProperty('commitedAt', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('deletedAt', RealmPropertyType.timestamp, optional: true),
    ]);
  }
}

class DbExercise extends _DbExercise with RealmEntity, RealmObject {
  DbExercise(
    String icon,
    String name,
    String description,
    String hierarchyPath,
    String id,
    Uuid uuid,
    String presentation, {
    Iterable<DbTask> definitions = const [],
  }) {
    RealmObject.set(this, 'icon', icon);
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'description', description);
    RealmObject.set(this, 'hierarchyPath', hierarchyPath);
    RealmObject.set(this, 'id', id);
    RealmObject.set(this, 'uuid', uuid);
    RealmObject.set(this, 'presentation', presentation);
    RealmObject.set<RealmList<DbTask>>(
        this, 'definitions', RealmList<DbTask>(definitions));
  }

  DbExercise._();

  @override
  String get icon => RealmObject.get<String>(this, 'icon') as String;
  @override
  set icon(String value) => RealmObject.set(this, 'icon', value);

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  String get description =>
      RealmObject.get<String>(this, 'description') as String;
  @override
  set description(String value) => RealmObject.set(this, 'description', value);

  @override
  RealmList<DbTask> get definitions =>
      RealmObject.get<DbTask>(this, 'definitions') as RealmList<DbTask>;
  @override
  set definitions(covariant RealmList<DbTask> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get hierarchyPath =>
      RealmObject.get<String>(this, 'hierarchyPath') as String;
  @override
  set hierarchyPath(String value) =>
      RealmObject.set(this, 'hierarchyPath', value);

  @override
  String get id => RealmObject.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObject.set(this, 'id', value);

  @override
  Uuid get uuid => RealmObject.get<Uuid>(this, 'uuid') as Uuid;
  @override
  set uuid(Uuid value) => RealmObject.set(this, 'uuid', value);

  @override
  String get presentation =>
      RealmObject.get<String>(this, 'presentation') as String;
  @override
  set presentation(String value) =>
      RealmObject.set(this, 'presentation', value);

  @override
  Stream<RealmObjectChanges<DbExercise>> get changes =>
      RealmObject.getChanges<DbExercise>(this);

  @override
  DbExercise freeze() => RealmObject.freezeObject<DbExercise>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(DbExercise._);
    return const SchemaObject(DbExercise, 'DbExercise', [
      SchemaProperty('icon', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('definitions', RealmPropertyType.object,
          linkTarget: 'DbTask', collectionType: RealmCollectionType.list),
      SchemaProperty('hierarchyPath', RealmPropertyType.string),
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('uuid', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('presentation', RealmPropertyType.string),
    ]);
  }
}

class DbSession extends _DbSession with RealmEntity, RealmObject {
  DbSession(
    String hierarchyPath,
    String id,
    Uuid uuid,
    DateTime createdAt,
    DateTime readAt,
    DateTime updatedAt, {
    DbExercise? template,
    DateTime? commitedAt,
    DateTime? deletedAt,
    Iterable<DbEntry> definitions = const [],
  }) {
    RealmObject.set(this, 'template', template);
    RealmObject.set(this, 'hierarchyPath', hierarchyPath);
    RealmObject.set(this, 'id', id);
    RealmObject.set(this, 'uuid', uuid);
    RealmObject.set(this, 'createdAt', createdAt);
    RealmObject.set(this, 'readAt', readAt);
    RealmObject.set(this, 'updatedAt', updatedAt);
    RealmObject.set(this, 'commitedAt', commitedAt);
    RealmObject.set(this, 'deletedAt', deletedAt);
    RealmObject.set<RealmList<DbEntry>>(
        this, 'definitions', RealmList<DbEntry>(definitions));
  }

  DbSession._();

  @override
  DbExercise? get template =>
      RealmObject.get<DbExercise>(this, 'template') as DbExercise?;
  @override
  set template(covariant DbExercise? value) =>
      RealmObject.set(this, 'template', value);

  @override
  RealmList<DbEntry> get definitions =>
      RealmObject.get<DbEntry>(this, 'definitions') as RealmList<DbEntry>;
  @override
  set definitions(covariant RealmList<DbEntry> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get hierarchyPath =>
      RealmObject.get<String>(this, 'hierarchyPath') as String;
  @override
  set hierarchyPath(String value) =>
      RealmObject.set(this, 'hierarchyPath', value);

  @override
  String get id => RealmObject.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObject.set(this, 'id', value);

  @override
  Uuid get uuid => RealmObject.get<Uuid>(this, 'uuid') as Uuid;
  @override
  set uuid(Uuid value) => RealmObject.set(this, 'uuid', value);

  @override
  DateTime get createdAt =>
      RealmObject.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) => RealmObject.set(this, 'createdAt', value);

  @override
  DateTime get readAt => RealmObject.get<DateTime>(this, 'readAt') as DateTime;
  @override
  set readAt(DateTime value) => RealmObject.set(this, 'readAt', value);

  @override
  DateTime get updatedAt =>
      RealmObject.get<DateTime>(this, 'updatedAt') as DateTime;
  @override
  set updatedAt(DateTime value) => RealmObject.set(this, 'updatedAt', value);

  @override
  DateTime? get commitedAt =>
      RealmObject.get<DateTime>(this, 'commitedAt') as DateTime?;
  @override
  set commitedAt(DateTime? value) => RealmObject.set(this, 'commitedAt', value);

  @override
  DateTime? get deletedAt =>
      RealmObject.get<DateTime>(this, 'deletedAt') as DateTime?;
  @override
  set deletedAt(DateTime? value) => RealmObject.set(this, 'deletedAt', value);

  @override
  Stream<RealmObjectChanges<DbSession>> get changes =>
      RealmObject.getChanges<DbSession>(this);

  @override
  DbSession freeze() => RealmObject.freezeObject<DbSession>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(DbSession._);
    return const SchemaObject(DbSession, 'DbSession', [
      SchemaProperty('template', RealmPropertyType.object,
          optional: true, linkTarget: 'DbExercise'),
      SchemaProperty('definitions', RealmPropertyType.object,
          linkTarget: 'DbEntry', collectionType: RealmCollectionType.list),
      SchemaProperty('hierarchyPath', RealmPropertyType.string),
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('uuid', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('readAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
      SchemaProperty('commitedAt', RealmPropertyType.timestamp, optional: true),
      SchemaProperty('deletedAt', RealmPropertyType.timestamp, optional: true),
    ]);
  }
}

class DbTask extends _DbTask with RealmEntity, RealmObject {
  DbTask(
    String icon,
    String name,
    String description,
    String collectionSlug,
    String hierarchyPath,
    String id,
    Uuid uuid, {
    Iterable<String> definitions = const [],
  }) {
    RealmObject.set(this, 'icon', icon);
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'description', description);
    RealmObject.set(this, 'collectionSlug', collectionSlug);
    RealmObject.set(this, 'hierarchyPath', hierarchyPath);
    RealmObject.set(this, 'id', id);
    RealmObject.set(this, 'uuid', uuid);
    RealmObject.set<RealmList<String>>(
        this, 'definitions', RealmList<String>(definitions));
  }

  DbTask._();

  @override
  String get icon => RealmObject.get<String>(this, 'icon') as String;
  @override
  set icon(String value) => RealmObject.set(this, 'icon', value);

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  String get description =>
      RealmObject.get<String>(this, 'description') as String;
  @override
  set description(String value) => RealmObject.set(this, 'description', value);

  @override
  RealmList<String> get definitions =>
      RealmObject.get<String>(this, 'definitions') as RealmList<String>;
  @override
  set definitions(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get collectionSlug =>
      RealmObject.get<String>(this, 'collectionSlug') as String;
  @override
  set collectionSlug(String value) =>
      RealmObject.set(this, 'collectionSlug', value);

  @override
  String get hierarchyPath =>
      RealmObject.get<String>(this, 'hierarchyPath') as String;
  @override
  set hierarchyPath(String value) =>
      RealmObject.set(this, 'hierarchyPath', value);

  @override
  String get id => RealmObject.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObject.set(this, 'id', value);

  @override
  Uuid get uuid => RealmObject.get<Uuid>(this, 'uuid') as Uuid;
  @override
  set uuid(Uuid value) => RealmObject.set(this, 'uuid', value);

  @override
  Stream<RealmObjectChanges<DbTask>> get changes =>
      RealmObject.getChanges<DbTask>(this);

  @override
  DbTask freeze() => RealmObject.freezeObject<DbTask>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(DbTask._);
    return const SchemaObject(DbTask, 'DbTask', [
      SchemaProperty('icon', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('definitions', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('collectionSlug', RealmPropertyType.string),
      SchemaProperty('hierarchyPath', RealmPropertyType.string),
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('uuid', RealmPropertyType.uuid, primaryKey: true),
    ]);
  }
}
