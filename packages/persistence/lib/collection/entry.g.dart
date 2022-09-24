// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetDbEntryCollection on Isar {
  IsarCollection<DbEntry> get dbEntrys => this.collection();
}

const DbEntrySchema = CollectionSchema(
  name: r'DbEntry',
  id: 618823930979236916,
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
    r'hierarchyPath': PropertySchema(
      id: 2,
      name: r'hierarchyPath',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 4,
      name: r'uuid',
      type: IsarType.byteList,
    )
  },
  estimateSize: _dbEntryEstimateSize,
  serialize: _dbEntrySerialize,
  deserialize: _dbEntryDeserialize,
  deserializeProp: _dbEntryDeserializeProp,
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
  links: {
    r'template': LinkSchema(
      id: -2258479826110606424,
      name: r'template',
      target: r'DbTask',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _dbEntryGetId,
  getLinks: _dbEntryGetLinks,
  attach: _dbEntryAttach,
  version: '3.0.1',
);

int _dbEntryEstimateSize(
  DbEntry object,
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
  bytesCount += 3 + object.hierarchyPath.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.uuid.length;
  return bytesCount;
}

void _dbEntrySerialize(
  DbEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.collectionSlug);
  writer.writeStringList(offsets[1], object.definitionIds);
  writer.writeString(offsets[2], object.hierarchyPath);
  writer.writeString(offsets[3], object.id);
  writer.writeByteList(offsets[4], object.uuid);
}

DbEntry _dbEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DbEntry(
    hierarchyPath: reader.readString(offsets[2]),
    id: reader.readString(offsets[3]),
    uuid: reader.readByteList(offsets[4]) ?? [],
  );
  object.collectionSlug = reader.readString(offsets[0]);
  object.dbid = id;
  object.definitionIds = reader.readStringList(offsets[1]) ?? [];
  return object;
}

P _dbEntryDeserializeProp<P>(
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
      return (reader.readByteList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dbEntryGetId(DbEntry object) {
  return object.dbid ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dbEntryGetLinks(DbEntry object) {
  return [object.template];
}

void _dbEntryAttach(IsarCollection<dynamic> col, Id id, DbEntry object) {
  object.dbid = id;
  object.template.attach(col, col.isar.collection<DbTask>(), r'template', id);
}

extension DbEntryByIndex on IsarCollection<DbEntry> {
  Future<DbEntry?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  DbEntry? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<DbEntry?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<DbEntry?> getAllByIdSync(List<String> idValues) {
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

  Future<Id> putById(DbEntry object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(DbEntry object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<DbEntry> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<DbEntry> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension DbEntryQueryWhereSort on QueryBuilder<DbEntry, DbEntry, QWhere> {
  QueryBuilder<DbEntry, DbEntry, QAfterWhere> anyDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DbEntryQueryWhere on QueryBuilder<DbEntry, DbEntry, QWhereClause> {
  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> dbidEqualTo(Id dbid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: dbid,
        upper: dbid,
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> dbidNotEqualTo(Id dbid) {
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

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> dbidGreaterThan(Id dbid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: dbid, includeLower: include),
      );
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> dbidLessThan(Id dbid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: dbid, includeUpper: include),
      );
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> dbidBetween(
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

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> hierarchyPathEqualToAnyId(
      String hierarchyPath) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath],
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause>
      hierarchyPathNotEqualToAnyId(String hierarchyPath) {
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

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> hierarchyPathIdEqualTo(
      String hierarchyPath, String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath, id],
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause>
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

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> idEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterWhereClause> idNotEqualTo(String id) {
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

extension DbEntryQueryFilter
    on QueryBuilder<DbEntry, DbEntry, QFilterCondition> {
  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> collectionSlugEqualTo(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      collectionSlugGreaterThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> collectionSlugLessThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> collectionSlugBetween(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      collectionSlugStartsWith(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> collectionSlugEndsWith(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> collectionSlugContains(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> collectionSlugMatches(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      collectionSlugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collectionSlug',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      collectionSlugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'collectionSlug',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> dbidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> dbidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> dbidEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dbid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> dbidGreaterThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> dbidLessThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> dbidBetween(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      definitionIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'definitionIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      definitionIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'definitionIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      definitionIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definitionIds',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      definitionIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'definitionIds',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> definitionIdsIsEmpty() {
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathEqualTo(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      hierarchyPathGreaterThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathLessThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathBetween(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathStartsWith(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathEndsWith(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathContains(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathMatches(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> hierarchyPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition>
      hierarchyPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidElementGreaterThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidElementLessThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidElementBetween(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidLengthEqualTo(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidIsEmpty() {
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidIsNotEmpty() {
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidLengthLessThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidLengthGreaterThan(
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

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> uuidLengthBetween(
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

extension DbEntryQueryObject
    on QueryBuilder<DbEntry, DbEntry, QFilterCondition> {}

extension DbEntryQueryLinks
    on QueryBuilder<DbEntry, DbEntry, QFilterCondition> {
  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> template(
      FilterQuery<DbTask> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'template');
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterFilterCondition> templateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'template', 0, true, 0, true);
    });
  }
}

extension DbEntryQuerySortBy on QueryBuilder<DbEntry, DbEntry, QSortBy> {
  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> sortByCollectionSlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.asc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> sortByCollectionSlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.desc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> sortByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> sortByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DbEntryQuerySortThenBy
    on QueryBuilder<DbEntry, DbEntry, QSortThenBy> {
  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenByCollectionSlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.asc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenByCollectionSlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.desc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenByDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.asc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenByDbidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.desc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DbEntryQueryWhereDistinct
    on QueryBuilder<DbEntry, DbEntry, QDistinct> {
  QueryBuilder<DbEntry, DbEntry, QDistinct> distinctByCollectionSlug(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'collectionSlug',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QDistinct> distinctByDefinitionIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'definitionIds');
    });
  }

  QueryBuilder<DbEntry, DbEntry, QDistinct> distinctByHierarchyPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hierarchyPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbEntry, DbEntry, QDistinct> distinctByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid');
    });
  }
}

extension DbEntryQueryProperty
    on QueryBuilder<DbEntry, DbEntry, QQueryProperty> {
  QueryBuilder<DbEntry, int, QQueryOperations> dbidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dbid');
    });
  }

  QueryBuilder<DbEntry, String, QQueryOperations> collectionSlugProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collectionSlug');
    });
  }

  QueryBuilder<DbEntry, List<String>, QQueryOperations>
      definitionIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'definitionIds');
    });
  }

  QueryBuilder<DbEntry, String, QQueryOperations> hierarchyPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hierarchyPath');
    });
  }

  QueryBuilder<DbEntry, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DbEntry, List<int>, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
