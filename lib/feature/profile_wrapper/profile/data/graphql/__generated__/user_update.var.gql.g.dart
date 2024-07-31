// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateUserVars> _$gUpdateUserVarsSerializer =
    new _$GUpdateUserVarsSerializer();

class _$GUpdateUserVarsSerializer
    implements StructuredSerializer<GUpdateUserVars> {
  @override
  final Iterable<Type> types = const [GUpdateUserVars, _$GUpdateUserVars];
  @override
  final String wireName = 'GUpdateUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'updateUserInput',
      serializers.serialize(object.updateUserInput,
          specifiedType: const FullType(_i1.GUpdateUserInput)),
    ];

    return result;
  }

  @override
  GUpdateUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'updateUserInput':
          result.updateUserInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUpdateUserInput))!
              as _i1.GUpdateUserInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserVars extends GUpdateUserVars {
  @override
  final _i1.GUpdateUserInput updateUserInput;

  factory _$GUpdateUserVars([void Function(GUpdateUserVarsBuilder)? updates]) =>
      (new GUpdateUserVarsBuilder()..update(updates))._build();

  _$GUpdateUserVars._({required this.updateUserInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        updateUserInput, r'GUpdateUserVars', 'updateUserInput');
  }

  @override
  GUpdateUserVars rebuild(void Function(GUpdateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserVarsBuilder toBuilder() =>
      new GUpdateUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserVars && updateUserInput == other.updateUserInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, updateUserInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserVars')
          ..add('updateUserInput', updateUserInput))
        .toString();
  }
}

class GUpdateUserVarsBuilder
    implements Builder<GUpdateUserVars, GUpdateUserVarsBuilder> {
  _$GUpdateUserVars? _$v;

  _i1.GUpdateUserInputBuilder? _updateUserInput;
  _i1.GUpdateUserInputBuilder get updateUserInput =>
      _$this._updateUserInput ??= new _i1.GUpdateUserInputBuilder();
  set updateUserInput(_i1.GUpdateUserInputBuilder? updateUserInput) =>
      _$this._updateUserInput = updateUserInput;

  GUpdateUserVarsBuilder();

  GUpdateUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _updateUserInput = $v.updateUserInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserVars;
  }

  @override
  void update(void Function(GUpdateUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserVars build() => _build();

  _$GUpdateUserVars _build() {
    _$GUpdateUserVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserVars._(updateUserInput: updateUserInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateUserInput';
        updateUserInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
