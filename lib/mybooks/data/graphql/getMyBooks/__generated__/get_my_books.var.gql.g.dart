// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_books.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetBookByAuthorVars> _$gGetBookByAuthorVarsSerializer =
    new _$GGetBookByAuthorVarsSerializer();

class _$GGetBookByAuthorVarsSerializer
    implements StructuredSerializer<GGetBookByAuthorVars> {
  @override
  final Iterable<Type> types = const [
    GGetBookByAuthorVars,
    _$GGetBookByAuthorVars
  ];
  @override
  final String wireName = 'GGetBookByAuthorVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetBookByAuthorVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'getMyBookInput',
      serializers.serialize(object.getMyBookInput,
          specifiedType: const FullType(_i1.GGetAllBookInput)),
    ];

    return result;
  }

  @override
  GGetBookByAuthorVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetBookByAuthorVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'getMyBookInput':
          result.getMyBookInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetAllBookInput))!
              as _i1.GGetAllBookInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetBookByAuthorVars extends GGetBookByAuthorVars {
  @override
  final _i1.GGetAllBookInput getMyBookInput;

  factory _$GGetBookByAuthorVars(
          [void Function(GGetBookByAuthorVarsBuilder)? updates]) =>
      (new GGetBookByAuthorVarsBuilder()..update(updates))._build();

  _$GGetBookByAuthorVars._({required this.getMyBookInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        getMyBookInput, r'GGetBookByAuthorVars', 'getMyBookInput');
  }

  @override
  GGetBookByAuthorVars rebuild(
          void Function(GGetBookByAuthorVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetBookByAuthorVarsBuilder toBuilder() =>
      new GGetBookByAuthorVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetBookByAuthorVars &&
        getMyBookInput == other.getMyBookInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, getMyBookInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetBookByAuthorVars')
          ..add('getMyBookInput', getMyBookInput))
        .toString();
  }
}

class GGetBookByAuthorVarsBuilder
    implements Builder<GGetBookByAuthorVars, GGetBookByAuthorVarsBuilder> {
  _$GGetBookByAuthorVars? _$v;

  _i1.GGetAllBookInputBuilder? _getMyBookInput;
  _i1.GGetAllBookInputBuilder get getMyBookInput =>
      _$this._getMyBookInput ??= new _i1.GGetAllBookInputBuilder();
  set getMyBookInput(_i1.GGetAllBookInputBuilder? getMyBookInput) =>
      _$this._getMyBookInput = getMyBookInput;

  GGetBookByAuthorVarsBuilder();

  GGetBookByAuthorVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _getMyBookInput = $v.getMyBookInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetBookByAuthorVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetBookByAuthorVars;
  }

  @override
  void update(void Function(GGetBookByAuthorVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetBookByAuthorVars build() => _build();

  _$GGetBookByAuthorVars _build() {
    _$GGetBookByAuthorVars _$result;
    try {
      _$result = _$v ??
          new _$GGetBookByAuthorVars._(getMyBookInput: getMyBookInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMyBookInput';
        getMyBookInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetBookByAuthorVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
