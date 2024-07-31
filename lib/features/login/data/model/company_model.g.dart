// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCompanyModelCollection on Isar {
  IsarCollection<CompanyModel> get companyModels => this.collection();
}

const CompanyModelSchema = CollectionSchema(
  name: r'CompanyModel',
  id: -1827242308681231162,
  properties: {
    r'databaseName': PropertySchema(
      id: 0,
      name: r'databaseName',
      type: IsarType.string,
    ),
    r'serverUrl': PropertySchema(
      id: 1,
      name: r'serverUrl',
      type: IsarType.string,
    )
  },
  estimateSize: _companyModelEstimateSize,
  serialize: _companyModelSerialize,
  deserialize: _companyModelDeserialize,
  deserializeProp: _companyModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _companyModelGetId,
  getLinks: _companyModelGetLinks,
  attach: _companyModelAttach,
  version: '3.1.0+1',
);

int _companyModelEstimateSize(
  CompanyModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.databaseName.length * 3;
  bytesCount += 3 + object.serverUrl.length * 3;
  return bytesCount;
}

void _companyModelSerialize(
  CompanyModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.databaseName);
  writer.writeString(offsets[1], object.serverUrl);
}

CompanyModel _companyModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CompanyModel(
    databaseName: reader.readString(offsets[0]),
    id: id,
    serverUrl: reader.readString(offsets[1]),
  );
  return object;
}

P _companyModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _companyModelGetId(CompanyModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _companyModelGetLinks(CompanyModel object) {
  return [];
}

void _companyModelAttach(
    IsarCollection<dynamic> col, Id id, CompanyModel object) {}

extension CompanyModelQueryWhereSort
    on QueryBuilder<CompanyModel, CompanyModel, QWhere> {
  QueryBuilder<CompanyModel, CompanyModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CompanyModelQueryWhere
    on QueryBuilder<CompanyModel, CompanyModel, QWhereClause> {
  QueryBuilder<CompanyModel, CompanyModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CompanyModelQueryFilter
    on QueryBuilder<CompanyModel, CompanyModel, QFilterCondition> {
  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'databaseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'databaseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'databaseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'databaseName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'databaseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'databaseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'databaseName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'databaseName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'databaseName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      databaseNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'databaseName',
        value: '',
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serverUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serverUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serverUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serverUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serverUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serverUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serverUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serverUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serverUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterFilterCondition>
      serverUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serverUrl',
        value: '',
      ));
    });
  }
}

extension CompanyModelQueryObject
    on QueryBuilder<CompanyModel, CompanyModel, QFilterCondition> {}

extension CompanyModelQueryLinks
    on QueryBuilder<CompanyModel, CompanyModel, QFilterCondition> {}

extension CompanyModelQuerySortBy
    on QueryBuilder<CompanyModel, CompanyModel, QSortBy> {
  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> sortByDatabaseName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseName', Sort.asc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy>
      sortByDatabaseNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseName', Sort.desc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> sortByServerUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverUrl', Sort.asc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> sortByServerUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverUrl', Sort.desc);
    });
  }
}

extension CompanyModelQuerySortThenBy
    on QueryBuilder<CompanyModel, CompanyModel, QSortThenBy> {
  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> thenByDatabaseName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseName', Sort.asc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy>
      thenByDatabaseNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'databaseName', Sort.desc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> thenByServerUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverUrl', Sort.asc);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QAfterSortBy> thenByServerUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serverUrl', Sort.desc);
    });
  }
}

extension CompanyModelQueryWhereDistinct
    on QueryBuilder<CompanyModel, CompanyModel, QDistinct> {
  QueryBuilder<CompanyModel, CompanyModel, QDistinct> distinctByDatabaseName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'databaseName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CompanyModel, CompanyModel, QDistinct> distinctByServerUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serverUrl', caseSensitive: caseSensitive);
    });
  }
}

extension CompanyModelQueryProperty
    on QueryBuilder<CompanyModel, CompanyModel, QQueryProperty> {
  QueryBuilder<CompanyModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CompanyModel, String, QQueryOperations> databaseNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'databaseName');
    });
  }

  QueryBuilder<CompanyModel, String, QQueryOperations> serverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serverUrl');
    });
  }
}
