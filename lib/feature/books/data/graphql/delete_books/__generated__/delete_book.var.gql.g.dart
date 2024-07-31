// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_book.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveBookVars> _$gRemoveBookVarsSerializer =
    new _$GRemoveBookVarsSerializer();

class _$GRemoveBookVarsSerializer
    implements StructuredSerializer<GRemoveBookVars> {
  @override
  final Iterable<Type> types = const [GRemoveBookVars, _$GRemoveBookVars];
  @override
  final String wireName = 'GRemoveBookVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveBookVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'removeBookId',
      serializers.serialize(object.removeBookId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRemoveBookVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveBookVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'removeBookId':
          result.removeBookId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveBookVars extends GRemoveBookVars {
  @override
  final String removeBookId;

  factory _$GRemoveBookVars([void Function(GRemoveBookVarsBuilder)? updates]) =>
      (new GRemoveBookVarsBuilder()..update(updates))._build();

  _$GRemoveBookVars._({required this.removeBookId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        removeBookId, r'GRemoveBookVars', 'removeBookId');
  }

  @override
  GRemoveBookVars rebuild(void Function(GRemoveBookVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveBookVarsBuilder toBuilder() =>
      new GRemoveBookVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveBookVars && removeBookId == other.removeBookId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, removeBookId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveBookVars')
          ..add('removeBookId', removeBookId))
        .toString();
  }
}

class GRemoveBookVarsBuilder
    implements Builder<GRemoveBookVars, GRemoveBookVarsBuilder> {
  _$GRemoveBookVars? _$v;

  String? _removeBookId;
  String? get removeBookId => _$this._removeBookId;
  set removeBookId(String? removeBookId) => _$this._removeBookId = removeBookId;

  GRemoveBookVarsBuilder();

  GRemoveBookVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _removeBookId = $v.removeBookId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveBookVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveBookVars;
  }

  @override
  void update(void Function(GRemoveBookVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveBookVars build() => _build();

  _$GRemoveBookVars _build() {
    final _$result = _$v ??
        new _$GRemoveBookVars._(
            removeBookId: BuiltValueNullFieldError.checkNotNull(
                removeBookId, r'GRemoveBookVars', 'removeBookId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
