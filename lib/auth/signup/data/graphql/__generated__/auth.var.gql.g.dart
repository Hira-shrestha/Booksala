// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserVars> _$gCreateUserVarsSerializer =
    new _$GCreateUserVarsSerializer();
Serializer<GUploadImageVars> _$gUploadImageVarsSerializer =
    new _$GUploadImageVarsSerializer();

class _$GCreateUserVarsSerializer
    implements StructuredSerializer<GCreateUserVars> {
  @override
  final Iterable<Type> types = const [GCreateUserVars, _$GCreateUserVars];
  @override
  final String wireName = 'GCreateUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'createUserInput',
      serializers.serialize(object.createUserInput,
          specifiedType: const FullType(_i1.GCreateUserInput)),
    ];

    return result;
  }

  @override
  GCreateUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createUserInput':
          result.createUserInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCreateUserInput))!
              as _i1.GCreateUserInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GUploadImageVarsSerializer
    implements StructuredSerializer<GUploadImageVars> {
  @override
  final Iterable<Type> types = const [GUploadImageVars, _$GUploadImageVars];
  @override
  final String wireName = 'GUploadImageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUploadImageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(_i1.GUpload)),
    ];

    return result;
  }

  @override
  GUploadImageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUploadImageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GUpload))! as _i1.GUpload);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserVars extends GCreateUserVars {
  @override
  final _i1.GCreateUserInput createUserInput;

  factory _$GCreateUserVars([void Function(GCreateUserVarsBuilder)? updates]) =>
      (new GCreateUserVarsBuilder()..update(updates))._build();

  _$GCreateUserVars._({required this.createUserInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createUserInput, r'GCreateUserVars', 'createUserInput');
  }

  @override
  GCreateUserVars rebuild(void Function(GCreateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserVarsBuilder toBuilder() =>
      new GCreateUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserVars && createUserInput == other.createUserInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createUserInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserVars')
          ..add('createUserInput', createUserInput))
        .toString();
  }
}

class GCreateUserVarsBuilder
    implements Builder<GCreateUserVars, GCreateUserVarsBuilder> {
  _$GCreateUserVars? _$v;

  _i1.GCreateUserInputBuilder? _createUserInput;
  _i1.GCreateUserInputBuilder get createUserInput =>
      _$this._createUserInput ??= new _i1.GCreateUserInputBuilder();
  set createUserInput(_i1.GCreateUserInputBuilder? createUserInput) =>
      _$this._createUserInput = createUserInput;

  GCreateUserVarsBuilder();

  GCreateUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createUserInput = $v.createUserInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserVars;
  }

  @override
  void update(void Function(GCreateUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserVars build() => _build();

  _$GCreateUserVars _build() {
    _$GCreateUserVars _$result;
    try {
      _$result = _$v ??
          new _$GCreateUserVars._(createUserInput: createUserInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createUserInput';
        createUserInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUploadImageVars extends GUploadImageVars {
  @override
  final _i1.GUpload image;

  factory _$GUploadImageVars(
          [void Function(GUploadImageVarsBuilder)? updates]) =>
      (new GUploadImageVarsBuilder()..update(updates))._build();

  _$GUploadImageVars._({required this.image}) : super._() {
    BuiltValueNullFieldError.checkNotNull(image, r'GUploadImageVars', 'image');
  }

  @override
  GUploadImageVars rebuild(void Function(GUploadImageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadImageVarsBuilder toBuilder() =>
      new GUploadImageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUploadImageVars && image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUploadImageVars')
          ..add('image', image))
        .toString();
  }
}

class GUploadImageVarsBuilder
    implements Builder<GUploadImageVars, GUploadImageVarsBuilder> {
  _$GUploadImageVars? _$v;

  _i1.GUploadBuilder? _image;
  _i1.GUploadBuilder get image => _$this._image ??= new _i1.GUploadBuilder();
  set image(_i1.GUploadBuilder? image) => _$this._image = image;

  GUploadImageVarsBuilder();

  GUploadImageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUploadImageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUploadImageVars;
  }

  @override
  void update(void Function(GUploadImageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUploadImageVars build() => _build();

  _$GUploadImageVars _build() {
    _$GUploadImageVars _$result;
    try {
      _$result = _$v ?? new _$GUploadImageVars._(image: image.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        image.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUploadImageVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
