// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_mode_model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetThemeModeModelCollection on Isar {
  IsarCollection<int, ThemeModeModel> get themeModeModels => this.collection();
}

const ThemeModeModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ThemeModeModel',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'isDarkMode',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, ThemeModeModel>(
    serialize: serializeThemeModeModel,
    deserialize: deserializeThemeModeModel,
    deserializeProperty: deserializeThemeModeModelProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeThemeModeModel(IsarWriter writer, ThemeModeModel object) {
  {
    final value = object.isDarkMode;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeBool(writer, 1, value);
    }
  }
  return object.id;
}

@isarProtected
ThemeModeModel deserializeThemeModeModel(IsarReader reader) {
  final object = ThemeModeModel();
  object.id = IsarCore.readId(reader);
  {
    if (IsarCore.readNull(reader, 1)) {
      object.isDarkMode = null;
    } else {
      object.isDarkMode = IsarCore.readBool(reader, 1);
    }
  }
  return object;
}

@isarProtected
dynamic deserializeThemeModeModelProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      {
        if (IsarCore.readNull(reader, 1)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 1);
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ThemeModeModelUpdate {
  bool call({
    required int id,
    bool? isDarkMode,
  });
}

class _ThemeModeModelUpdateImpl implements _ThemeModeModelUpdate {
  const _ThemeModeModelUpdateImpl(this.collection);

  final IsarCollection<int, ThemeModeModel> collection;

  @override
  bool call({
    required int id,
    Object? isDarkMode = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (isDarkMode != ignore) 1: isDarkMode as bool?,
        }) >
        0;
  }
}

sealed class _ThemeModeModelUpdateAll {
  int call({
    required List<int> id,
    bool? isDarkMode,
  });
}

class _ThemeModeModelUpdateAllImpl implements _ThemeModeModelUpdateAll {
  const _ThemeModeModelUpdateAllImpl(this.collection);

  final IsarCollection<int, ThemeModeModel> collection;

  @override
  int call({
    required List<int> id,
    Object? isDarkMode = ignore,
  }) {
    return collection.updateProperties(id, {
      if (isDarkMode != ignore) 1: isDarkMode as bool?,
    });
  }
}

extension ThemeModeModelUpdate on IsarCollection<int, ThemeModeModel> {
  _ThemeModeModelUpdate get update => _ThemeModeModelUpdateImpl(this);

  _ThemeModeModelUpdateAll get updateAll => _ThemeModeModelUpdateAllImpl(this);
}

sealed class _ThemeModeModelQueryUpdate {
  int call({
    bool? isDarkMode,
  });
}

class _ThemeModeModelQueryUpdateImpl implements _ThemeModeModelQueryUpdate {
  const _ThemeModeModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ThemeModeModel> query;
  final int? limit;

  @override
  int call({
    Object? isDarkMode = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (isDarkMode != ignore) 1: isDarkMode as bool?,
    });
  }
}

extension ThemeModeModelQueryUpdate on IsarQuery<ThemeModeModel> {
  _ThemeModeModelQueryUpdate get updateFirst =>
      _ThemeModeModelQueryUpdateImpl(this, limit: 1);

  _ThemeModeModelQueryUpdate get updateAll =>
      _ThemeModeModelQueryUpdateImpl(this);
}

class _ThemeModeModelQueryBuilderUpdateImpl
    implements _ThemeModeModelQueryUpdate {
  const _ThemeModeModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<ThemeModeModel, ThemeModeModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? isDarkMode = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (isDarkMode != ignore) 1: isDarkMode as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension ThemeModeModelQueryBuilderUpdate
    on QueryBuilder<ThemeModeModel, ThemeModeModel, QOperations> {
  _ThemeModeModelQueryUpdate get updateFirst =>
      _ThemeModeModelQueryBuilderUpdateImpl(this, limit: 1);

  _ThemeModeModelQueryUpdate get updateAll =>
      _ThemeModeModelQueryBuilderUpdateImpl(this);
}

extension ThemeModeModelQueryFilter
    on QueryBuilder<ThemeModeModel, ThemeModeModel, QFilterCondition> {
  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition>
      isDarkModeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition>
      isDarkModeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterFilterCondition>
      isDarkModeEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }
}

extension ThemeModeModelQueryObject
    on QueryBuilder<ThemeModeModel, ThemeModeModel, QFilterCondition> {}

extension ThemeModeModelQuerySortBy
    on QueryBuilder<ThemeModeModel, ThemeModeModel, QSortBy> {
  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy>
      sortByIsDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy>
      sortByIsDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }
}

extension ThemeModeModelQuerySortThenBy
    on QueryBuilder<ThemeModeModel, ThemeModeModel, QSortThenBy> {
  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy>
      thenByIsDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterSortBy>
      thenByIsDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }
}

extension ThemeModeModelQueryWhereDistinct
    on QueryBuilder<ThemeModeModel, ThemeModeModel, QDistinct> {
  QueryBuilder<ThemeModeModel, ThemeModeModel, QAfterDistinct>
      distinctByIsDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }
}

extension ThemeModeModelQueryProperty1
    on QueryBuilder<ThemeModeModel, ThemeModeModel, QProperty> {
  QueryBuilder<ThemeModeModel, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ThemeModeModel, bool?, QAfterProperty> isDarkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension ThemeModeModelQueryProperty2<R>
    on QueryBuilder<ThemeModeModel, R, QAfterProperty> {
  QueryBuilder<ThemeModeModel, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ThemeModeModel, (R, bool?), QAfterProperty>
      isDarkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}

extension ThemeModeModelQueryProperty3<R1, R2>
    on QueryBuilder<ThemeModeModel, (R1, R2), QAfterProperty> {
  QueryBuilder<ThemeModeModel, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ThemeModeModel, (R1, R2, bool?), QOperations>
      isDarkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }
}
