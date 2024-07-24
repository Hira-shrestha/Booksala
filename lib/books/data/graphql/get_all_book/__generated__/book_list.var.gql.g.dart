// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GBooksVars> _$gBooksVarsSerializer = new _$GBooksVarsSerializer();

class _$GBooksVarsSerializer implements StructuredSerializer<GBooksVars> {
  @override
  final Iterable<Type> types = const [GBooksVars, _$GBooksVars];
  @override
  final String wireName = 'GBooksVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBooksVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'getAllBookInput',
      serializers.serialize(object.getAllBookInput,
          specifiedType: const FullType(_i1.GGetAllBookInput)),
    ];

    return result;
  }

  @override
  GBooksVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBooksVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'getAllBookInput':
          result.getAllBookInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetAllBookInput))!
              as _i1.GGetAllBookInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GBooksVars extends GBooksVars {
  @override
  final _i1.GGetAllBookInput getAllBookInput;

  factory _$GBooksVars([void Function(GBooksVarsBuilder)? updates]) =>
      (new GBooksVarsBuilder()..update(updates))._build();

  _$GBooksVars._({required this.getAllBookInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        getAllBookInput, r'GBooksVars', 'getAllBookInput');
  }

  @override
  GBooksVars rebuild(void Function(GBooksVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBooksVarsBuilder toBuilder() => new GBooksVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBooksVars && getAllBookInput == other.getAllBookInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, getAllBookInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBooksVars')
          ..add('getAllBookInput', getAllBookInput))
        .toString();
  }
}

class GBooksVarsBuilder implements Builder<GBooksVars, GBooksVarsBuilder> {
  _$GBooksVars? _$v;

  _i1.GGetAllBookInputBuilder? _getAllBookInput;
  _i1.GGetAllBookInputBuilder get getAllBookInput =>
      _$this._getAllBookInput ??= new _i1.GGetAllBookInputBuilder();
  set getAllBookInput(_i1.GGetAllBookInputBuilder? getAllBookInput) =>
      _$this._getAllBookInput = getAllBookInput;

  GBooksVarsBuilder();

  GBooksVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _getAllBookInput = $v.getAllBookInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBooksVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBooksVars;
  }

  @override
  void update(void Function(GBooksVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBooksVars build() => _build();

  _$GBooksVars _build() {
    _$GBooksVars _$result;
    try {
      _$result =
          _$v ?? new _$GBooksVars._(getAllBookInput: getAllBookInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAllBookInput';
        getAllBookInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBooksVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
