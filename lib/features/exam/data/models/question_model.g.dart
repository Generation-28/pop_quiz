// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuestionModelCollection on Isar {
  IsarCollection<QuestionModel> get questionModels => this.collection();
}

const QuestionModelSchema = CollectionSchema(
  name: r'QuestionModel',
  id: -2676110388347547136,
  properties: {
    r'answers': PropertySchema(
      id: 0,
      name: r'answers',
      type: IsarType.objectList,
      target: r'AnswerModel',
    ),
    r'correctAnswerId': PropertySchema(
      id: 1,
      name: r'correctAnswerId',
      type: IsarType.string,
    ),
    r'text': PropertySchema(
      id: 2,
      name: r'text',
      type: IsarType.string,
    ),
    r'userSelectedAnswerId': PropertySchema(
      id: 3,
      name: r'userSelectedAnswerId',
      type: IsarType.string,
    )
  },
  estimateSize: _questionModelEstimateSize,
  serialize: _questionModelSerialize,
  deserialize: _questionModelDeserialize,
  deserializeProp: _questionModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'text': IndexSchema(
      id: 5145922347574274048,
      name: r'text',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'text',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'AnswerModel': AnswerModelSchema},
  getId: _questionModelGetId,
  getLinks: _questionModelGetLinks,
  attach: _questionModelAttach,
  version: '3.1.0+1',
);

int _questionModelEstimateSize(
  QuestionModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.answers.length * 3;
  {
    final offsets = allOffsets[AnswerModel]!;
    for (var i = 0; i < object.answers.length; i++) {
      final value = object.answers[i];
      bytesCount += AnswerModelSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.correctAnswerId.length * 3;
  bytesCount += 3 + object.text.length * 3;
  {
    final value = object.userSelectedAnswerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _questionModelSerialize(
  QuestionModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<AnswerModel>(
    offsets[0],
    allOffsets,
    AnswerModelSchema.serialize,
    object.answers,
  );
  writer.writeString(offsets[1], object.correctAnswerId);
  writer.writeString(offsets[2], object.text);
  writer.writeString(offsets[3], object.userSelectedAnswerId);
}

QuestionModel _questionModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuestionModel(
    answers: reader.readObjectList<AnswerModel>(
          offsets[0],
          AnswerModelSchema.deserialize,
          allOffsets,
          AnswerModel(),
        ) ??
        [],
    correctAnswerId: reader.readString(offsets[1]),
    id: id,
    text: reader.readString(offsets[2]),
    userSelectedAnswerId: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _questionModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<AnswerModel>(
            offset,
            AnswerModelSchema.deserialize,
            allOffsets,
            AnswerModel(),
          ) ??
          []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _questionModelGetId(QuestionModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _questionModelGetLinks(QuestionModel object) {
  return [];
}

void _questionModelAttach(
    IsarCollection<dynamic> col, Id id, QuestionModel object) {
  object.id = id;
}

extension QuestionModelQueryWhereSort
    on QueryBuilder<QuestionModel, QuestionModel, QWhere> {
  QueryBuilder<QuestionModel, QuestionModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuestionModelQueryWhere
    on QueryBuilder<QuestionModel, QuestionModel, QWhereClause> {
  QueryBuilder<QuestionModel, QuestionModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<QuestionModel, QuestionModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<QuestionModel, QuestionModel, QAfterWhereClause> textEqualTo(
      String text) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'text',
        value: [text],
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterWhereClause> textNotEqualTo(
      String text) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'text',
              lower: [],
              upper: [text],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'text',
              lower: [text],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'text',
              lower: [text],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'text',
              lower: [],
              upper: [text],
              includeUpper: false,
            ));
      }
    });
  }
}

extension QuestionModelQueryFilter
    on QueryBuilder<QuestionModel, QuestionModel, QFilterCondition> {
  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      answersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      answersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      answersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      answersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      answersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      answersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'answers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctAnswerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'correctAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'correctAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correctAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correctAnswerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswerId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      correctAnswerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correctAnswerId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      textGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      textLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition> textMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userSelectedAnswerId',
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userSelectedAnswerId',
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userSelectedAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userSelectedAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userSelectedAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userSelectedAnswerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userSelectedAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userSelectedAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userSelectedAnswerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userSelectedAnswerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userSelectedAnswerId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      userSelectedAnswerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userSelectedAnswerId',
        value: '',
      ));
    });
  }
}

extension QuestionModelQueryObject
    on QueryBuilder<QuestionModel, QuestionModel, QFilterCondition> {
  QueryBuilder<QuestionModel, QuestionModel, QAfterFilterCondition>
      answersElement(FilterQuery<AnswerModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'answers');
    });
  }
}

extension QuestionModelQueryLinks
    on QueryBuilder<QuestionModel, QuestionModel, QFilterCondition> {}

extension QuestionModelQuerySortBy
    on QueryBuilder<QuestionModel, QuestionModel, QSortBy> {
  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      sortByCorrectAnswerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerId', Sort.asc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      sortByCorrectAnswerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerId', Sort.desc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy> sortByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy> sortByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      sortByUserSelectedAnswerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userSelectedAnswerId', Sort.asc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      sortByUserSelectedAnswerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userSelectedAnswerId', Sort.desc);
    });
  }
}

extension QuestionModelQuerySortThenBy
    on QueryBuilder<QuestionModel, QuestionModel, QSortThenBy> {
  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      thenByCorrectAnswerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerId', Sort.asc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      thenByCorrectAnswerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswerId', Sort.desc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy> thenByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy> thenByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      thenByUserSelectedAnswerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userSelectedAnswerId', Sort.asc);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QAfterSortBy>
      thenByUserSelectedAnswerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userSelectedAnswerId', Sort.desc);
    });
  }
}

extension QuestionModelQueryWhereDistinct
    on QueryBuilder<QuestionModel, QuestionModel, QDistinct> {
  QueryBuilder<QuestionModel, QuestionModel, QDistinct>
      distinctByCorrectAnswerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctAnswerId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'text', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuestionModel, QuestionModel, QDistinct>
      distinctByUserSelectedAnswerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userSelectedAnswerId',
          caseSensitive: caseSensitive);
    });
  }
}

extension QuestionModelQueryProperty
    on QueryBuilder<QuestionModel, QuestionModel, QQueryProperty> {
  QueryBuilder<QuestionModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuestionModel, List<AnswerModel>, QQueryOperations>
      answersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answers');
    });
  }

  QueryBuilder<QuestionModel, String, QQueryOperations>
      correctAnswerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctAnswerId');
    });
  }

  QueryBuilder<QuestionModel, String, QQueryOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'text');
    });
  }

  QueryBuilder<QuestionModel, String?, QQueryOperations>
      userSelectedAnswerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userSelectedAnswerId');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AnswerModelSchema = Schema(
  name: r'AnswerModel',
  id: -3220956187614606336,
  properties: {
    r'explanation': PropertySchema(
      id: 0,
      name: r'explanation',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'text': PropertySchema(
      id: 2,
      name: r'text',
      type: IsarType.string,
    )
  },
  estimateSize: _answerModelEstimateSize,
  serialize: _answerModelSerialize,
  deserialize: _answerModelDeserialize,
  deserializeProp: _answerModelDeserializeProp,
);

int _answerModelEstimateSize(
  AnswerModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.explanation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.text;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _answerModelSerialize(
  AnswerModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.explanation);
  writer.writeString(offsets[1], object.id);
  writer.writeString(offsets[2], object.text);
}

AnswerModel _answerModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AnswerModel(
    explanation: reader.readStringOrNull(offsets[0]),
    id: reader.readStringOrNull(offsets[1]),
    text: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _answerModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AnswerModelQueryFilter
    on QueryBuilder<AnswerModel, AnswerModel, QFilterCondition> {
  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'explanation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'explanation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      explanationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idEqualTo(
    String? value, {
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idGreaterThan(
    String? value, {
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idLessThan(
    String? value, {
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idContains(
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idMatches(
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

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      textIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<AnswerModel, AnswerModel, QAfterFilterCondition>
      textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }
}

extension AnswerModelQueryObject
    on QueryBuilder<AnswerModel, AnswerModel, QFilterCondition> {}
