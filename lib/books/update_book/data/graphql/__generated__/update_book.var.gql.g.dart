// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_book.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateBookVars> _$gUpdateBookVarsSerializer =
    new _$GUpdateBookVarsSerializer();

class _$GUpdateBookVarsSerializer
    implements StructuredSerializer<GUpdateBookVars> {
  @override
  final Iterable<Type> types = const [GUpdateBookVars, _$GUpdateBookVars];
  @override
  final String wireName = 'GUpdateBookVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateBookVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'updateBookDto',
      serializers.serialize(object.updateBookDto,
          specifiedType: const FullType(_i1.GUpdateBookInput)),
    ];

    return result;
  }

  @override
  GUpdateBookVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateBookVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'updateBookDto':
          result.updateBookDto.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUpdateBookInput))!
              as _i1.GUpdateBookInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateBookVars extends GUpdateBookVars {
  @override
  final _i1.GUpdateBookInput updateBookDto;

  factory _$GUpdateBookVars([void Function(GUpdateBookVarsBuilder)? updates]) =>
      (new GUpdateBookVarsBuilder()..update(updates))._build();

  _$GUpdateBookVars._({required this.updateBookDto}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        updateBookDto, r'GUpdateBookVars', 'updateBookDto');
  }

  @override
  GUpdateBookVars rebuild(void Function(GUpdateBookVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateBookVarsBuilder toBuilder() =>
      new GUpdateBookVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateBookVars && updateBookDto == other.updateBookDto;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, updateBookDto.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateBookVars')
          ..add('updateBookDto', updateBookDto))
        .toString();
  }
}

class GUpdateBookVarsBuilder
    implements Builder<GUpdateBookVars, GUpdateBookVarsBuilder> {
  _$GUpdateBookVars? _$v;

  _i1.GUpdateBookInputBuilder? _updateBookDto;
  _i1.GUpdateBookInputBuilder get updateBookDto =>
      _$this._updateBookDto ??= new _i1.GUpdateBookInputBuilder();
  set updateBookDto(_i1.GUpdateBookInputBuilder? updateBookDto) =>
      _$this._updateBookDto = updateBookDto;

  GUpdateBookVarsBuilder();

  GUpdateBookVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _updateBookDto = $v.updateBookDto.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateBookVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateBookVars;
  }

  @override
  void update(void Function(GUpdateBookVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateBookVars build() => _build();

  _$GUpdateBookVars _build() {
    _$GUpdateBookVars _$result;
    try {
      _$result =
          _$v ?? new _$GUpdateBookVars._(updateBookDto: updateBookDto.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateBookDto';
        updateBookDto.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateBookVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
