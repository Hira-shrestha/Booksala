// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_books.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSearchBookVars> _$gSearchBookVarsSerializer =
    new _$GSearchBookVarsSerializer();

class _$GSearchBookVarsSerializer
    implements StructuredSerializer<GSearchBookVars> {
  @override
  final Iterable<Type> types = const [GSearchBookVars, _$GSearchBookVars];
  @override
  final String wireName = 'GSearchBookVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchBookVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'searchBook',
      serializers.serialize(object.searchBook,
          specifiedType: const FullType(_i1.GGetAllSearchBookInput)),
    ];

    return result;
  }

  @override
  GSearchBookVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchBookVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchBook':
          result.searchBook.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetAllSearchBookInput))!
              as _i1.GGetAllSearchBookInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchBookVars extends GSearchBookVars {
  @override
  final _i1.GGetAllSearchBookInput searchBook;

  factory _$GSearchBookVars([void Function(GSearchBookVarsBuilder)? updates]) =>
      (new GSearchBookVarsBuilder()..update(updates))._build();

  _$GSearchBookVars._({required this.searchBook}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        searchBook, r'GSearchBookVars', 'searchBook');
  }

  @override
  GSearchBookVars rebuild(void Function(GSearchBookVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchBookVarsBuilder toBuilder() =>
      new GSearchBookVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchBookVars && searchBook == other.searchBook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchBook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchBookVars')
          ..add('searchBook', searchBook))
        .toString();
  }
}

class GSearchBookVarsBuilder
    implements Builder<GSearchBookVars, GSearchBookVarsBuilder> {
  _$GSearchBookVars? _$v;

  _i1.GGetAllSearchBookInputBuilder? _searchBook;
  _i1.GGetAllSearchBookInputBuilder get searchBook =>
      _$this._searchBook ??= new _i1.GGetAllSearchBookInputBuilder();
  set searchBook(_i1.GGetAllSearchBookInputBuilder? searchBook) =>
      _$this._searchBook = searchBook;

  GSearchBookVarsBuilder();

  GSearchBookVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchBook = $v.searchBook.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchBookVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchBookVars;
  }

  @override
  void update(void Function(GSearchBookVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchBookVars build() => _build();

  _$GSearchBookVars _build() {
    _$GSearchBookVars _$result;
    try {
      _$result = _$v ?? new _$GSearchBookVars._(searchBook: searchBook.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchBook';
        searchBook.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchBookVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
