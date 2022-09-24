// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetDbTaskCollection on Isar {
  IsarCollection<DbTask> get dbTasks => this.collection();
}

const DbTaskSchema = CollectionSchema(
  name: r'DbTask',
  id: 6920614639584873659,
  properties: {
    r'collectionSlug': PropertySchema(
      id: 0,
      name: r'collectionSlug',
      type: IsarType.string,
    ),
    r'definitionIds': PropertySchema(
      id: 1,
      name: r'definitionIds',
      type: IsarType.stringList,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'hierarchyPath': PropertySchema(
      id: 3,
      name: r'hierarchyPath',
      type: IsarType.string,
    ),
    r'icon': PropertySchema(
      id: 4,
      name: r'icon',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 5,
      name: r'id',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 7,
      name: r'uuid',
      type: IsarType.byteList,
    )
  },
  estimateSize: _dbTaskEstimateSize,
  serialize: _dbTaskSerialize,
  deserialize: _dbTaskDeserialize,
  deserializeProp: _dbTaskDeserializeProp,
  idName: r'dbid',
  indexes: {
    r'hierarchyPath_id': IndexSchema(
      id: 765287312655333986,
      name: r'hierarchyPath_id',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'hierarchyPath',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _dbTaskGetId,
  getLinks: _dbTaskGetLinks,
  attach: _dbTaskAttach,
  version: '3.0.1',
);

int _dbTaskEstimateSize(
  DbTask object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.collectionSlug.length * 3;
  bytesCount += 3 + object.definitionIds.length * 3;
  {
    for (var i = 0; i < object.definitionIds.length; i++) {
      final value = object.definitionIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.hierarchyPath.length * 3;
  bytesCount += 3 + object.icon.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.uuid.length;
  return bytesCount;
}

void _dbTaskSerialize(
  DbTask object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.collectionSlug);
  writer.writeStringList(offsets[1], object.definitionIds);
  writer.writeString(offsets[2], object.description);
  writer.writeString(offsets[3], object.hierarchyPath);
  writer.writeString(offsets[4], object.icon);
  writer.writeString(offsets[5], object.id);
  writer.writeString(offsets[6], object.name);
  writer.writeByteList(offsets[7], object.uuid);
}

DbTask _dbTaskDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DbTask(
    collectionSlug: reader.readString(offsets[0]),
    description: reader.readString(offsets[2]),
    hierarchyPath: reader.readString(offsets[3]),
    icon: reader.readString(offsets[4]),
    id: reader.readString(offsets[5]),
    name: reader.readString(offsets[6]),
    uuid: reader.readByteList(offsets[7]) ?? [],
  );
  object.dbid = id;
  object.definitionIds = reader.readStringList(offsets[1]) ?? [];
  return object;
}

P _dbTaskDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readByteList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dbTaskGetId(DbTask object) {
  return object.dbid ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dbTaskGetLinks(DbTask object) {
  return [];
}

void _dbTaskAttach(IsarCollection<dynamic> col, Id id, DbTask object) {
  object.dbid = id;
}

extension DbTaskByIndex on IsarCollection<DbTask> {
  Future<DbTask?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  DbTask? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<DbTask?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<DbTask?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(DbTask object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(DbTask object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<DbTask> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<DbTask> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension DbTaskQueryWhereSort on QueryBuilder<DbTask, DbTask, QWhere> {
  QueryBuilder<DbTask, DbTask, QAfterWhere> anyDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DbTaskQueryWhere on QueryBuilder<DbTask, DbTask, QWhereClause> {
  QueryBuilder<DbTask, DbTask, QAfterWhereClause> dbidEqualTo(Id dbid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: dbid,
        upper: dbid,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> dbidNotEqualTo(Id dbid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: dbid, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: dbid, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: dbid, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: dbid, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> dbidGreaterThan(Id dbid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: dbid, includeLower: include),
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> dbidLessThan(Id dbid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: dbid, includeUpper: include),
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> dbidBetween(
    Id lowerDbid,
    Id upperDbid, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerDbid,
        includeLower: includeLower,
        upper: upperDbid,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> hierarchyPathEqualToAnyId(
      String hierarchyPath) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath],
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> hierarchyPathNotEqualToAnyId(
      String hierarchyPath) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [],
              upper: [hierarchyPath],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [hierarchyPath],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [hierarchyPath],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [],
              upper: [hierarchyPath],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> hierarchyPathIdEqualTo(
      String hierarchyPath, String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath, id],
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause>
      hierarchyPathEqualToIdNotEqualTo(String hierarchyPath, String id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [hierarchyPath],
              upper: [hierarchyPath, id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [hierarchyPath, id],
              includeLower: false,
              upper: [hierarchyPath],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [hierarchyPath, id],
              includeLower: false,
              upper: [hierarchyPath],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hierarchyPath_id',
              lower: [hierarchyPath],
              upper: [hierarchyPath, id],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> idEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterWhereClause> idNotEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DbTaskQueryFilter on QueryBuilder<DbTask, DbTask, QFilterCondition> {
  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collectionSlug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'collectionSlug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'collectionSlug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'collectionSlug',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'collectionSlug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'collectionSlug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'collectionSlug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'collectionSlug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> collectionSlugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collectionSlug',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      collectionSlugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'collectionSlug',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> dbidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> dbidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> dbidEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dbid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> dbidGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dbid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> dbidLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dbid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> dbidBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dbid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definitionIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'definitionIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'definitionIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'definitionIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'definitionIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'definitionIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'definitionIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'definitionIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definitionIds',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'definitionIds',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitionIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> definitionIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitionIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitionIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitionIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitionIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      definitionIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitionIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hierarchyPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hierarchyPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> hierarchyPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition>
      hierarchyPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uuid',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uuid',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uuid',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uuid',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uuid',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterFilterCondition> uuidLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uuid',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension DbTaskQueryObject on QueryBuilder<DbTask, DbTask, QFilterCondition> {}

extension DbTaskQueryLinks on QueryBuilder<DbTask, DbTask, QFilterCondition> {}

extension DbTaskQuerySortBy on QueryBuilder<DbTask, DbTask, QSortBy> {
  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByCollectionSlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByCollectionSlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension DbTaskQuerySortThenBy on QueryBuilder<DbTask, DbTask, QSortThenBy> {
  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByCollectionSlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByCollectionSlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByDbidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DbTask, DbTask, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension DbTaskQueryWhereDistinct on QueryBuilder<DbTask, DbTask, QDistinct> {
  QueryBuilder<DbTask, DbTask, QDistinct> distinctByCollectionSlug(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'collectionSlug',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTask, DbTask, QDistinct> distinctByDefinitionIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'definitionIds');
    });
  }

  QueryBuilder<DbTask, DbTask, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTask, DbTask, QDistinct> distinctByHierarchyPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hierarchyPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTask, DbTask, QDistinct> distinctByIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTask, DbTask, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTask, DbTask, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTask, DbTask, QDistinct> distinctByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid');
    });
  }
}

extension DbTaskQueryProperty on QueryBuilder<DbTask, DbTask, QQueryProperty> {
  QueryBuilder<DbTask, int, QQueryOperations> dbidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dbid');
    });
  }

  QueryBuilder<DbTask, String, QQueryOperations> collectionSlugProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collectionSlug');
    });
  }

  QueryBuilder<DbTask, List<String>, QQueryOperations> definitionIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'definitionIds');
    });
  }

  QueryBuilder<DbTask, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<DbTask, String, QQueryOperations> hierarchyPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hierarchyPath');
    });
  }

  QueryBuilder<DbTask, String, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<DbTask, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DbTask, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DbTask, List<int>, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
