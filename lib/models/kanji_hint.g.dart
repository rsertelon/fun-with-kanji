// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanji_hint.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetKanjiHintCollection on Isar {
  IsarCollection<int, KanjiHint> get kanjiHints => this.collection();
}

final KanjiHintSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'KanjiHint',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'writingSystem',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'characterId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'hint',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, KanjiHint>(
    serialize: serializeKanjiHint,
    deserialize: deserializeKanjiHint,
    deserializeProperty: deserializeKanjiHintProp,
  ),
  getEmbeddedSchemas: () => [],
);

@isarProtected
int serializeKanjiHint(IsarWriter writer, KanjiHint object) {
  IsarCore.writeString(writer, 1, object.writingSystem);
  IsarCore.writeLong(writer, 2, object.characterId);
  IsarCore.writeString(writer, 3, object.hint);
  return object.id;
}

@isarProtected
KanjiHint deserializeKanjiHint(IsarReader reader) {
  final object = KanjiHint();
  object.id = IsarCore.readId(reader);
  object.writingSystem = IsarCore.readString(reader, 1) ?? '';
  object.characterId = IsarCore.readLong(reader, 2);
  object.hint = IsarCore.readString(reader, 3) ?? '';
  return object;
}

@isarProtected
dynamic deserializeKanjiHintProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readLong(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _KanjiHintUpdate {
  bool call({
    required int id,
    String? writingSystem,
    int? characterId,
    String? hint,
  });
}

class _KanjiHintUpdateImpl implements _KanjiHintUpdate {
  const _KanjiHintUpdateImpl(this.collection);

  final IsarCollection<int, KanjiHint> collection;

  @override
  bool call({
    required int id,
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? hint = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (writingSystem != ignore) 1: writingSystem as String?,
          if (characterId != ignore) 2: characterId as int?,
          if (hint != ignore) 3: hint as String?,
        }) >
        0;
  }
}

sealed class _KanjiHintUpdateAll {
  int call({
    required List<int> id,
    String? writingSystem,
    int? characterId,
    String? hint,
  });
}

class _KanjiHintUpdateAllImpl implements _KanjiHintUpdateAll {
  const _KanjiHintUpdateAllImpl(this.collection);

  final IsarCollection<int, KanjiHint> collection;

  @override
  int call({
    required List<int> id,
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? hint = ignore,
  }) {
    return collection.updateProperties(id, {
      if (writingSystem != ignore) 1: writingSystem as String?,
      if (characterId != ignore) 2: characterId as int?,
      if (hint != ignore) 3: hint as String?,
    });
  }
}

extension KanjiHintUpdate on IsarCollection<int, KanjiHint> {
  _KanjiHintUpdate get update => _KanjiHintUpdateImpl(this);

  _KanjiHintUpdateAll get updateAll => _KanjiHintUpdateAllImpl(this);
}

sealed class _KanjiHintQueryUpdate {
  int call({
    String? writingSystem,
    int? characterId,
    String? hint,
  });
}

class _KanjiHintQueryUpdateImpl implements _KanjiHintQueryUpdate {
  const _KanjiHintQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<KanjiHint> query;
  final int? limit;

  @override
  int call({
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? hint = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (writingSystem != ignore) 1: writingSystem as String?,
      if (characterId != ignore) 2: characterId as int?,
      if (hint != ignore) 3: hint as String?,
    });
  }
}

extension KanjiHintQueryUpdate on IsarQuery<KanjiHint> {
  _KanjiHintQueryUpdate get updateFirst =>
      _KanjiHintQueryUpdateImpl(this, limit: 1);

  _KanjiHintQueryUpdate get updateAll => _KanjiHintQueryUpdateImpl(this);
}

class _KanjiHintQueryBuilderUpdateImpl implements _KanjiHintQueryUpdate {
  const _KanjiHintQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<KanjiHint, KanjiHint, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? hint = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (writingSystem != ignore) 1: writingSystem as String?,
        if (characterId != ignore) 2: characterId as int?,
        if (hint != ignore) 3: hint as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension KanjiHintQueryBuilderUpdate
    on QueryBuilder<KanjiHint, KanjiHint, QOperations> {
  _KanjiHintQueryUpdate get updateFirst =>
      _KanjiHintQueryBuilderUpdateImpl(this, limit: 1);

  _KanjiHintQueryUpdate get updateAll => _KanjiHintQueryBuilderUpdateImpl(this);
}

extension KanjiHintQueryFilter
    on QueryBuilder<KanjiHint, KanjiHint, QFilterCondition> {
  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
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

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> idLessThanOrEqualTo(
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

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> idBetween(
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

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      writingSystemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> characterIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      characterIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      characterIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> characterIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      characterIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> characterIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      hintGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition>
      hintLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterFilterCondition> hintIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }
}

extension KanjiHintQueryObject
    on QueryBuilder<KanjiHint, KanjiHint, QFilterCondition> {}

extension KanjiHintQuerySortBy on QueryBuilder<KanjiHint, KanjiHint, QSortBy> {
  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortByWritingSystem(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortByWritingSystemDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortByCharacterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortByCharacterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortByHint(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> sortByHintDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension KanjiHintQuerySortThenBy
    on QueryBuilder<KanjiHint, KanjiHint, QSortThenBy> {
  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenByWritingSystem(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenByWritingSystemDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenByCharacterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenByCharacterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenByHint(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterSortBy> thenByHintDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension KanjiHintQueryWhereDistinct
    on QueryBuilder<KanjiHint, KanjiHint, QDistinct> {
  QueryBuilder<KanjiHint, KanjiHint, QAfterDistinct> distinctByWritingSystem(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterDistinct> distinctByCharacterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<KanjiHint, KanjiHint, QAfterDistinct> distinctByHint(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }
}

extension KanjiHintQueryProperty1
    on QueryBuilder<KanjiHint, KanjiHint, QProperty> {
  QueryBuilder<KanjiHint, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<KanjiHint, String, QAfterProperty> writingSystemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<KanjiHint, int, QAfterProperty> characterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<KanjiHint, String, QAfterProperty> hintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension KanjiHintQueryProperty2<R>
    on QueryBuilder<KanjiHint, R, QAfterProperty> {
  QueryBuilder<KanjiHint, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<KanjiHint, (R, String), QAfterProperty> writingSystemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<KanjiHint, (R, int), QAfterProperty> characterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<KanjiHint, (R, String), QAfterProperty> hintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension KanjiHintQueryProperty3<R1, R2>
    on QueryBuilder<KanjiHint, (R1, R2), QAfterProperty> {
  QueryBuilder<KanjiHint, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<KanjiHint, (R1, R2, String), QOperations>
      writingSystemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<KanjiHint, (R1, R2, int), QOperations> characterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<KanjiHint, (R1, R2, String), QOperations> hintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}
