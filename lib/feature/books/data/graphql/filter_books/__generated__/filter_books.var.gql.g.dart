// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_books.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFilterBookVars> _$gFilterBookVarsSerializer =
    new _$GFilterBookVarsSerializer();

class _$GFilterBookVarsSerializer
    implements StructuredSerializer<GFilterBookVars> {
  @override
  final Iterable<Type> types = const [GFilterBookVars, _$GFilterBookVars];
  @override
  final String wireName = 'GFilterBookVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFilterBookVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'filterBook',
      serializers.serialize(object.filterBook,
          specifiedType: const FullType(_i1.GGetAllFilterBookInput)),
    ];

    return result;
  }

  @override
  GFilterBookVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterBookVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filterBook':
          result.filterBook.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetAllFilterBookInput))!
              as _i1.GGetAllFilterBookInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterBookVars extends GFilterBookVars {
  @override
  final _i1.GGetAllFilterBookInput filterBook;

  factory _$GFilterBookVars([void Function(GFilterBookVarsBuilder)? updates]) =>
      (new GFilterBookVarsBuilder()..update(updates))._build();

  _$GFilterBookVars._({required this.filterBook}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        filterBook, r'GFilterBookVars', 'filterBook');
  }

  @override
  GFilterBookVars rebuild(void Function(GFilterBookVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterBookVarsBuilder toBuilder() =>
      new GFilterBookVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterBookVars && filterBook == other.filterBook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filterBook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFilterBookVars')
          ..add('filterBook', filterBook))
        .toString();
  }
}

class GFilterBookVarsBuilder
    implements Builder<GFilterBookVars, GFilterBookVarsBuilder> {
  _$GFilterBookVars? _$v;

  _i1.GGetAllFilterBookInputBuilder? _filterBook;
  _i1.GGetAllFilterBookInputBuilder get filterBook =>
      _$this._filterBook ??= new _i1.GGetAllFilterBookInputBuilder();
  set filterBook(_i1.GGetAllFilterBookInputBuilder? filterBook) =>
      _$this._filterBook = filterBook;

  GFilterBookVarsBuilder();

  GFilterBookVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterBook = $v.filterBook.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFilterBookVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterBookVars;
  }

  @override
  void update(void Function(GFilterBookVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterBookVars build() => _build();

  _$GFilterBookVars _build() {
    _$GFilterBookVars _$result;
    try {
      _$result = _$v ?? new _$GFilterBookVars._(filterBook: filterBook.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filterBook';
        filterBook.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFilterBookVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
