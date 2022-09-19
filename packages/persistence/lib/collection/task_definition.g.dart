// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_definition.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetDbTaskDefinitionCollection on Isar {
  IsarCollection<DbTaskDefinition> get dbTaskDefinitions => this.collection();
}

const DbTaskDefinitionSchema = CollectionSchema(
  name: r'DbTaskDefinition',
  id: 7605850003683822523,
  properties: {
    r'collectionSlug': PropertySchema(
      id: 0,
      name: r'collectionSlug',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'hierarchyPath': PropertySchema(
      id: 2,
      name: r'hierarchyPath',
      type: IsarType.string,
    ),
    r'icon': PropertySchema(
      id: 3,
      name: r'icon',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 6,
      name: r'uuid',
      type: IsarType.byteList,
    )
  },
  estimateSize: _dbTaskDefinitionEstimateSize,
  serialize: _dbTaskDefinitionSerialize,
  deserialize: _dbTaskDefinitionDeserialize,
  deserializeProp: _dbTaskDefinitionDeserializeProp,
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
  links: {},
  embeddedSchemas: {},
  getId: _dbTaskDefinitionGetId,
  getLinks: _dbTaskDefinitionGetLinks,
  attach: _dbTaskDefinitionAttach,
  version: '3.0.0',
);

int _dbTaskDefinitionEstimateSize(
  DbTaskDefinition object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.collectionSlug.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.hierarchyPath.length * 3;
  bytesCount += 3 + object.icon.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.uuid.length;
  return bytesCount;
}

void _dbTaskDefinitionSerialize(
  DbTaskDefinition object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.collectionSlug);
  writer.writeString(offsets[1], object.description);
  writer.writeString(offsets[2], object.hierarchyPath);
  writer.writeString(offsets[3], object.icon);
  writer.writeString(offsets[4], object.id);
  writer.writeString(offsets[5], object.name);
  writer.writeByteList(offsets[6], object.uuid);
}

DbTaskDefinition _dbTaskDefinitionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DbTaskDefinition(
    collectionSlug: reader.readString(offsets[0]),
    description: reader.readString(offsets[1]),
    hierarchyPath: reader.readString(offsets[2]),
    icon: reader.readString(offsets[3]),
    id: reader.readString(offsets[4]),
    name: reader.readString(offsets[5]),
    uuid: reader.readByteList(offsets[6]) ?? [],
  );
  object.dbid = id;
  return object;
}

P _dbTaskDefinitionDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readByteList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dbTaskDefinitionGetId(DbTaskDefinition object) {
  return object.dbid ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dbTaskDefinitionGetLinks(DbTaskDefinition object) {
  return [];
}

void _dbTaskDefinitionAttach(
    IsarCollection<dynamic> col, Id id, DbTaskDefinition object) {
  object.dbid = id;
}

extension DbTaskDefinitionByIndex on IsarCollection<DbTaskDefinition> {
  Future<DbTaskDefinition?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  DbTaskDefinition? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<DbTaskDefinition?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<DbTaskDefinition?> getAllByIdSync(List<String> idValues) {
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

  Future<Id> putById(DbTaskDefinition object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(DbTaskDefinition object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<DbTaskDefinition> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<DbTaskDefinition> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension DbTaskDefinitionQueryWhereSort
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QWhere> {
  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhere> anyDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DbTaskDefinitionQueryWhere
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QWhereClause> {
  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      dbidEqualTo(Id dbid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: dbid,
        upper: dbid,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      dbidNotEqualTo(Id dbid) {
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      dbidGreaterThan(Id dbid, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: dbid, includeLower: include),
      );
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      dbidLessThan(Id dbid, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: dbid, includeUpper: include),
      );
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      dbidBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      hierarchyPathEqualToAnyId(String hierarchyPath) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath],
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      hierarchyPathIdEqualTo(String hierarchyPath, String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hierarchyPath_id',
        value: [hierarchyPath, id],
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause> idEqualTo(
      String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterWhereClause>
      idNotEqualTo(String id) {
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

extension DbTaskDefinitionQueryFilter
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QFilterCondition> {
  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugEqualTo(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugEndsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'collectionSlug',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'collectionSlug',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collectionSlug',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      collectionSlugIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'collectionSlug',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      dbidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      dbidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dbid',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      dbidEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dbid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      dbidGreaterThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      dbidLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      dbidBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionEqualTo(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionGreaterThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionStartsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionEndsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      hierarchyPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hierarchyPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      hierarchyPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hierarchyPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      hierarchyPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      hierarchyPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hierarchyPath',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconEqualTo(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconGreaterThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconStartsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconEndsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idEqualTo(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idStartsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idEndsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
      ));
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidElementLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidElementBetween(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidLengthEqualTo(int length) {
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidIsEmpty() {
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidIsNotEmpty() {
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidLengthLessThan(
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
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

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterFilterCondition>
      uuidLengthBetween(
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

extension DbTaskDefinitionQueryObject
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QFilterCondition> {}

extension DbTaskDefinitionQueryLinks
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QFilterCondition> {}

extension DbTaskDefinitionQuerySortBy
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QSortBy> {
  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByCollectionSlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByCollectionSlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension DbTaskDefinitionQuerySortThenBy
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QSortThenBy> {
  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByCollectionSlug() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByCollectionSlugDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectionSlug', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy> thenByDbid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByDbidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dbid', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByHierarchyPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByHierarchyPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hierarchyPath', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension DbTaskDefinitionQueryWhereDistinct
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct> {
  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct>
      distinctByCollectionSlug({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'collectionSlug',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct>
      distinctByHierarchyPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hierarchyPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct> distinctByIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DbTaskDefinition, DbTaskDefinition, QDistinct> distinctByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid');
    });
  }
}

extension DbTaskDefinitionQueryProperty
    on QueryBuilder<DbTaskDefinition, DbTaskDefinition, QQueryProperty> {
  QueryBuilder<DbTaskDefinition, int, QQueryOperations> dbidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dbid');
    });
  }

  QueryBuilder<DbTaskDefinition, String, QQueryOperations>
      collectionSlugProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collectionSlug');
    });
  }

  QueryBuilder<DbTaskDefinition, String, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<DbTaskDefinition, String, QQueryOperations>
      hierarchyPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hierarchyPath');
    });
  }

  QueryBuilder<DbTaskDefinition, String, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<DbTaskDefinition, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DbTaskDefinition, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DbTaskDefinition, List<int>, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
