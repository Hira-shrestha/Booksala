// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_book.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateBookVars> _$gCreateBookVarsSerializer =
    new _$GCreateBookVarsSerializer();

class _$GCreateBookVarsSerializer
    implements StructuredSerializer<GCreateBookVars> {
  @override
  final Iterable<Type> types = const [GCreateBookVars, _$GCreateBookVars];
  @override
  final String wireName = 'GCreateBookVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateBookVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'createBookInput',
      serializers.serialize(object.createBookInput,
          specifiedType: const FullType(_i1.GCreateBookInput)),
    ];

    return result;
  }

  @override
  GCreateBookVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBookVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createBookInput':
          result.createBookInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCreateBookInput))!
              as _i1.GCreateBookInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBookVars extends GCreateBookVars {
  @override
  final _i1.GCreateBookInput createBookInput;

  factory _$GCreateBookVars([void Function(GCreateBookVarsBuilder)? updates]) =>
      (new GCreateBookVarsBuilder()..update(updates))._build();

  _$GCreateBookVars._({required this.createBookInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createBookInput, r'GCreateBookVars', 'createBookInput');
  }

  @override
  GCreateBookVars rebuild(void Function(GCreateBookVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBookVarsBuilder toBuilder() =>
      new GCreateBookVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBookVars && createBookInput == other.createBookInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createBookInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateBookVars')
          ..add('createBookInput', createBookInput))
        .toString();
  }
}

class GCreateBookVarsBuilder
    implements Builder<GCreateBookVars, GCreateBookVarsBuilder> {
  _$GCreateBookVars? _$v;

  _i1.GCreateBookInputBuilder? _createBookInput;
  _i1.GCreateBookInputBuilder get createBookInput =>
      _$this._createBookInput ??= new _i1.GCreateBookInputBuilder();
  set createBookInput(_i1.GCreateBookInputBuilder? createBookInput) =>
      _$this._createBookInput = createBookInput;

  GCreateBookVarsBuilder();

  GCreateBookVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createBookInput = $v.createBookInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBookVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBookVars;
  }

  @override
  void update(void Function(GCreateBookVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBookVars build() => _build();

  _$GCreateBookVars _build() {
    _$GCreateBookVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateBookVars._(createBookInput: createBookInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createBookInput';
        createBookInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateBookVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
