// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetDbSessionCollection on Isar {
  IsarCollection<DbSession> get dbSessions => this.collection();
}

const DbSessionSchema = CollectionSchema(
  name: r'DbSession',
  id: -85436735318854737,
  properties: {
    r'hierarchyPath': PropertySchema(
      id: 0,
      name: r'hierarchyPath',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 2,
      name: r'uuid',
      type: IsarType.byteList,
    )
  },
  estimateSize: _dbSessionEstimateSize,
  serialize: _dbSessionSerialize,
  deserialize: _dbSessionDeserialize,
  deserializeProp: _dbSessionDeserializeProp,
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
      replace: false,
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
      id: -8243597452828635512,
      name: r'template',
      target: r'DbExercise',
      single: true,
    ),
    r'definitions': LinkSchema(
      id: -4110918359984434565,
      name: r'definitions',
      target: r'DbEntry',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _dbSessionGetId,
  getLinks: _dbSessionGetLinks,
  attach: _dbSessionAttach,
  version: '3.0.0',
);

int _dbSessionEstimateSize(
  DbSession object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.hierarchyPath.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.uuid.length;
  return bytesCount;
}

void _dbSessionSerialize(
  DbSession object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.hierarchyPath);
  writer.writeString(offsets[1], object.id);
  writer.writeByteList(offsets[2], object.uuid);
}

DbSession _dbSessionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DbSession(
    hierarchyPath: reader.readString(offsets[0]),
    id: reader.readString(offsets[1]),
    uuid: reader.readByteList(offsets[2]) ?? [],
  );
  object.dbid = id;
  return object;
}

P _dbSessionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readByteList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dbSessionGetId(DbSession object) {
  return object.dbid ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dbSessionGetLinks(DbSession object) {
  return [object.template, object.definitions];
}

void _dbSessionAttach(IsarCollection<dynamic> col, Id id, DbSession object) {
  object.dbid = id;
  object.template
      .attach(col, col.isar.collection<DbExercise>(), r'template', id);
  object.definitions
      .attach(col, col.isar.collection<DbEntry>(), r'definitions', id);
}

extension DbSessionByIndex on IsarCollection<DbSession> {
  Future<DbSession?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  DbSession? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<DbSession?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<DbSession?> getAllByIdSync(List<String> idValues) {
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

  Future<Id> putById(DbSession object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(DbSession object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<DbSession> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<DbSession> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension DbSessionQueryWhereSort
    on QueryBuilder<DbSession, DbSession, QWhere> {
  QueryBuilder<DbSession, DbSession, QAfterWhere> anyDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DbSessionQueryWhere
    on QueryBuilder<DbSession, DbSession, QWhereClause> {
  QueryBuilder<DbSession, DbSession, QAfterWhereClause> dbidEqualTo(Id dbid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: dbid,
        upper: dbid,
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterWhereClause> dbidNotEqualTo(
      Id dbid) {
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

  QueryBuilder<DbSession, DbSession, QAfterWhereClause> dbidGreaterThan(Id dbid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: dbid, includeLower: include),
      );
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterWhereClause> dbidLessThan(Id dbid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: dbid, includeUpper: include),
      );
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterWhereClause> dbidBetween(
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

  QueryBuilder<DbSession, DbSession, QAfterWhereClause>
      hierarchyPathEqualToAnyId(String hierarchyPath) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath],
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterWhereClause>
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

  QueryBuilder<DbSession, DbSession, QAfterWhereClause> hierarchyPathIdEqualTo(
      String hierarchyPath, String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath, id],
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterWhereClause>
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

  QueryBuilder<DbSession, DbSession, QAfterWhereClause> idEqualTo(String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterWhereClause> idNotEqualTo(
      String id) {
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

extension DbSessionQueryFilter
    on QueryBuilder<DbSession, DbSession, QFilterCondition> {
  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> dbidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> dbidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> dbidEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dbid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> dbidGreaterThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> dbidLessThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> dbidBetween(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathEqualTo(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathLessThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathBetween(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathStartsWith(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathEndsWith(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hierarchyPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      hierarchyPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idMatches(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      uuidElementGreaterThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidElementLessThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidElementBetween(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidLengthEqualTo(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidIsEmpty() {
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidIsNotEmpty() {
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidLengthLessThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      uuidLengthGreaterThan(
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

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> uuidLengthBetween(
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

extension DbSessionQueryObject
    on QueryBuilder<DbSession, DbSession, QFilterCondition> {}

extension DbSessionQueryLinks
    on QueryBuilder<DbSession, DbSession, QFilterCondition> {
  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> template(
      FilterQuery<DbExercise> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'template');
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> templateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'template', 0, true, 0, true);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition> definitions(
      FilterQuery<DbEntry> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'definitions');
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      definitionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', length, true, length, true);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      definitionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', 0, true, 0, true);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      definitionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', 0, false, 999999, true);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      definitionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', 0, true, length, include);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      definitionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', length, include, 999999, true);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterFilterCondition>
      definitionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'definitions', lower, includeLower, upper, includeUpper);
    });
  }
}

extension DbSessionQuerySortBy on QueryBuilder<DbSession, DbSession, QSortBy> {
  QueryBuilder<DbSession, DbSession, QAfterSortBy> sortByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> sortByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DbSessionQuerySortThenBy
    on QueryBuilder<DbSession, DbSession, QSortThenBy> {
  QueryBuilder<DbSession, DbSession, QAfterSortBy> thenByDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.asc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> thenByDbidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.desc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> thenByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> thenByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbSession, DbSession, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DbSessionQueryWhereDistinct
    on QueryBuilder<DbSession, DbSession, QDistinct> {
  QueryBuilder<DbSession, DbSession, QDistinct> distinctByHierarchyPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hierarchyPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbSession, DbSession, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbSession, DbSession, QDistinct> distinctByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid');
    });
  }
}

extension DbSessionQueryProperty
    on QueryBuilder<DbSession, DbSession, QQueryProperty> {
  QueryBuilder<DbSession, int, QQueryOperations> dbidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dbid');
    });
  }

  QueryBuilder<DbSession, String, QQueryOperations> hierarchyPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hierarchyPath');
    });
  }

  QueryBuilder<DbSession, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DbSession, List<int>, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
