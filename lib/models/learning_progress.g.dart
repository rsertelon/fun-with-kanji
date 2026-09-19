// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_progress.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetLearningProgressCollection on Isar {
  IsarCollection<int, LearningProgress> get learningProgress =>
      this.collection();
}

final LearningProgressSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'LearningProgress',
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
        name: 'stars',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'lastCheckedAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'canLevelUp',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, LearningProgress>(
    serialize: serializeLearningProgress,
    deserialize: deserializeLearningProgress,
    deserializeProperty: deserializeLearningProgressProp,
  ),
  getEmbeddedSchemas: () => [],
);

@isarProtected
int serializeLearningProgress(IsarWriter writer, LearningProgress object) {
  IsarCore.writeString(writer, 1, object.writingSystem);
  IsarCore.writeLong(writer, 2, object.characterId);
  IsarCore.writeLong(writer, 3, object.stars);
  IsarCore.writeLong(
      writer,
      4,
      object.lastCheckedAt?.toUtc().microsecondsSinceEpoch ??
          -9223372036854775808);
  IsarCore.writeBool(writer, 5, value: object.canLevelUp);
  return object.id;
}

@isarProtected
LearningProgress deserializeLearningProgress(IsarReader reader) {
  final object = LearningProgress();
  object.id = IsarCore.readId(reader);
  object.writingSystem = IsarCore.readString(reader, 1) ?? '';
  object.characterId = IsarCore.readLong(reader, 2);
  object.stars = IsarCore.readLong(reader, 3);
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      object.lastCheckedAt = null;
    } else {
      object.lastCheckedAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  return object;
}

@isarProtected
dynamic deserializeLearningProgressProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readLong(reader, 2);
    case 3:
      return IsarCore.readLong(reader, 3);
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 5:
      return IsarCore.readBool(reader, 5);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _LearningProgressUpdate {
  bool call({
    required int id,
    String? writingSystem,
    int? characterId,
    int? stars,
    DateTime? lastCheckedAt,
    bool? canLevelUp,
  });
}

class _LearningProgressUpdateImpl implements _LearningProgressUpdate {
  const _LearningProgressUpdateImpl(this.collection);

  final IsarCollection<int, LearningProgress> collection;

  @override
  bool call({
    required int id,
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? stars = ignore,
    Object? lastCheckedAt = ignore,
    Object? canLevelUp = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (writingSystem != ignore) 1: writingSystem as String?,
          if (characterId != ignore) 2: characterId as int?,
          if (stars != ignore) 3: stars as int?,
          if (lastCheckedAt != ignore) 4: lastCheckedAt as DateTime?,
          if (canLevelUp != ignore) 5: canLevelUp as bool?,
        }) >
        0;
  }
}

sealed class _LearningProgressUpdateAll {
  int call({
    required List<int> id,
    String? writingSystem,
    int? characterId,
    int? stars,
    DateTime? lastCheckedAt,
    bool? canLevelUp,
  });
}

class _LearningProgressUpdateAllImpl implements _LearningProgressUpdateAll {
  const _LearningProgressUpdateAllImpl(this.collection);

  final IsarCollection<int, LearningProgress> collection;

  @override
  int call({
    required List<int> id,
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? stars = ignore,
    Object? lastCheckedAt = ignore,
    Object? canLevelUp = ignore,
  }) {
    return collection.updateProperties(id, {
      if (writingSystem != ignore) 1: writingSystem as String?,
      if (characterId != ignore) 2: characterId as int?,
      if (stars != ignore) 3: stars as int?,
      if (lastCheckedAt != ignore) 4: lastCheckedAt as DateTime?,
      if (canLevelUp != ignore) 5: canLevelUp as bool?,
    });
  }
}

extension LearningProgressUpdate on IsarCollection<int, LearningProgress> {
  _LearningProgressUpdate get update => _LearningProgressUpdateImpl(this);

  _LearningProgressUpdateAll get updateAll =>
      _LearningProgressUpdateAllImpl(this);
}

sealed class _LearningProgressQueryUpdate {
  int call({
    String? writingSystem,
    int? characterId,
    int? stars,
    DateTime? lastCheckedAt,
    bool? canLevelUp,
  });
}

class _LearningProgressQueryUpdateImpl implements _LearningProgressQueryUpdate {
  const _LearningProgressQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<LearningProgress> query;
  final int? limit;

  @override
  int call({
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? stars = ignore,
    Object? lastCheckedAt = ignore,
    Object? canLevelUp = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (writingSystem != ignore) 1: writingSystem as String?,
      if (characterId != ignore) 2: characterId as int?,
      if (stars != ignore) 3: stars as int?,
      if (lastCheckedAt != ignore) 4: lastCheckedAt as DateTime?,
      if (canLevelUp != ignore) 5: canLevelUp as bool?,
    });
  }
}

extension LearningProgressQueryUpdate on IsarQuery<LearningProgress> {
  _LearningProgressQueryUpdate get updateFirst =>
      _LearningProgressQueryUpdateImpl(this, limit: 1);

  _LearningProgressQueryUpdate get updateAll =>
      _LearningProgressQueryUpdateImpl(this);
}

class _LearningProgressQueryBuilderUpdateImpl
    implements _LearningProgressQueryUpdate {
  const _LearningProgressQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<LearningProgress, LearningProgress, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? writingSystem = ignore,
    Object? characterId = ignore,
    Object? stars = ignore,
    Object? lastCheckedAt = ignore,
    Object? canLevelUp = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (writingSystem != ignore) 1: writingSystem as String?,
        if (characterId != ignore) 2: characterId as int?,
        if (stars != ignore) 3: stars as int?,
        if (lastCheckedAt != ignore) 4: lastCheckedAt as DateTime?,
        if (canLevelUp != ignore) 5: canLevelUp as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension LearningProgressQueryBuilderUpdate
    on QueryBuilder<LearningProgress, LearningProgress, QOperations> {
  _LearningProgressQueryUpdate get updateFirst =>
      _LearningProgressQueryBuilderUpdateImpl(this, limit: 1);

  _LearningProgressQueryUpdate get updateAll =>
      _LearningProgressQueryBuilderUpdateImpl(this);
}

extension LearningProgressQueryFilter
    on QueryBuilder<LearningProgress, LearningProgress, QFilterCondition> {
  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      idEqualTo(
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      characterIdEqualTo(
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      characterIdLessThan(
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      characterIdBetween(
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

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      starsEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      starsGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      starsGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      starsLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      starsLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      starsBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      lastCheckedAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterFilterCondition>
      canLevelUpEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }
}

extension LearningProgressQueryObject
    on QueryBuilder<LearningProgress, LearningProgress, QFilterCondition> {}

extension LearningProgressQuerySortBy
    on QueryBuilder<LearningProgress, LearningProgress, QSortBy> {
  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByWritingSystem({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByWritingSystemDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByCharacterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByCharacterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy> sortByStars() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByStarsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByLastCheckedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByLastCheckedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByCanLevelUp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      sortByCanLevelUpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension LearningProgressQuerySortThenBy
    on QueryBuilder<LearningProgress, LearningProgress, QSortThenBy> {
  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByWritingSystem({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByWritingSystemDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByCharacterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByCharacterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy> thenByStars() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByStarsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByLastCheckedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByLastCheckedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByCanLevelUp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterSortBy>
      thenByCanLevelUpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension LearningProgressQueryWhereDistinct
    on QueryBuilder<LearningProgress, LearningProgress, QDistinct> {
  QueryBuilder<LearningProgress, LearningProgress, QAfterDistinct>
      distinctByWritingSystem({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterDistinct>
      distinctByCharacterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterDistinct>
      distinctByStars() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterDistinct>
      distinctByLastCheckedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<LearningProgress, LearningProgress, QAfterDistinct>
      distinctByCanLevelUp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension LearningProgressQueryProperty1
    on QueryBuilder<LearningProgress, LearningProgress, QProperty> {
  QueryBuilder<LearningProgress, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<LearningProgress, String, QAfterProperty>
      writingSystemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<LearningProgress, int, QAfterProperty> characterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<LearningProgress, int, QAfterProperty> starsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<LearningProgress, DateTime?, QAfterProperty>
      lastCheckedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<LearningProgress, bool, QAfterProperty> canLevelUpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension LearningProgressQueryProperty2<R>
    on QueryBuilder<LearningProgress, R, QAfterProperty> {
  QueryBuilder<LearningProgress, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<LearningProgress, (R, String), QAfterProperty>
      writingSystemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<LearningProgress, (R, int), QAfterProperty>
      characterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<LearningProgress, (R, int), QAfterProperty> starsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<LearningProgress, (R, DateTime?), QAfterProperty>
      lastCheckedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<LearningProgress, (R, bool), QAfterProperty>
      canLevelUpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension LearningProgressQueryProperty3<R1, R2>
    on QueryBuilder<LearningProgress, (R1, R2), QAfterProperty> {
  QueryBuilder<LearningProgress, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<LearningProgress, (R1, R2, String), QOperations>
      writingSystemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<LearningProgress, (R1, R2, int), QOperations>
      characterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<LearningProgress, (R1, R2, int), QOperations> starsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<LearningProgress, (R1, R2, DateTime?), QOperations>
      lastCheckedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<LearningProgress, (R1, R2, bool), QOperations>
      canLevelUpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
