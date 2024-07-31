// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateUserData> _$gUpdateUserDataSerializer =
    new _$GUpdateUserDataSerializer();
Serializer<GUpdateUserData_updateUser> _$gUpdateUserDataUpdateUserSerializer =
    new _$GUpdateUserData_updateUserSerializer();
Serializer<GUpdateUserData_updateUser_data>
    _$gUpdateUserDataUpdateUserDataSerializer =
    new _$GUpdateUserData_updateUser_dataSerializer();

class _$GUpdateUserDataSerializer
    implements StructuredSerializer<GUpdateUserData> {
  @override
  final Iterable<Type> types = const [GUpdateUserData, _$GUpdateUserData];
  @override
  final String wireName = 'GUpdateUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateUser',
      serializers.serialize(object.updateUser,
          specifiedType: const FullType(GUpdateUserData_updateUser)),
    ];

    return result;
  }

  @override
  GUpdateUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updateUser':
          result.updateUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdateUserData_updateUser))!
              as GUpdateUserData_updateUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_updateUserSerializer
    implements StructuredSerializer<GUpdateUserData_updateUser> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_updateUser,
    _$GUpdateUserData_updateUser
  ];
  @override
  final String wireName = 'GUpdateUserData_updateUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_updateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(double)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(GUpdateUserData_updateUser_data)),
    ];

    return result;
  }

  @override
  GUpdateUserData_updateUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_updateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateUserData_updateUser_data))!
              as GUpdateUserData_updateUser_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_updateUser_dataSerializer
    implements StructuredSerializer<GUpdateUserData_updateUser_data> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_updateUser_data,
    _$GUpdateUserData_updateUser_data
  ];
  @override
  final String wireName = 'GUpdateUserData_updateUser_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_updateUser_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUserData_updateUser_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_updateUser_dataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData extends GUpdateUserData {
  @override
  final String G__typename;
  @override
  final GUpdateUserData_updateUser updateUser;

  factory _$GUpdateUserData([void Function(GUpdateUserDataBuilder)? updates]) =>
      (new GUpdateUserDataBuilder()..update(updates))._build();

  _$GUpdateUserData._({required this.G__typename, required this.updateUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateUser, r'GUpdateUserData', 'updateUser');
  }

  @override
  GUpdateUserData rebuild(void Function(GUpdateUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserDataBuilder toBuilder() =>
      new GUpdateUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData &&
        G__typename == other.G__typename &&
        updateUser == other.updateUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData')
          ..add('G__typename', G__typename)
          ..add('updateUser', updateUser))
        .toString();
  }
}

class GUpdateUserDataBuilder
    implements Builder<GUpdateUserData, GUpdateUserDataBuilder> {
  _$GUpdateUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateUserData_updateUserBuilder? _updateUser;
  GUpdateUserData_updateUserBuilder get updateUser =>
      _$this._updateUser ??= new GUpdateUserData_updateUserBuilder();
  set updateUser(GUpdateUserData_updateUserBuilder? updateUser) =>
      _$this._updateUser = updateUser;

  GUpdateUserDataBuilder() {
    GUpdateUserData._initializeBuilder(this);
  }

  GUpdateUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateUser = $v.updateUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData;
  }

  @override
  void update(void Function(GUpdateUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData build() => _build();

  _$GUpdateUserData _build() {
    _$GUpdateUserData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateUserData', 'G__typename'),
              updateUser: updateUser.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateUser';
        updateUser.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_updateUser extends GUpdateUserData_updateUser {
  @override
  final String G__typename;
  @override
  final double status;
  @override
  final String message;
  @override
  final GUpdateUserData_updateUser_data data;

  factory _$GUpdateUserData_updateUser(
          [void Function(GUpdateUserData_updateUserBuilder)? updates]) =>
      (new GUpdateUserData_updateUserBuilder()..update(updates))._build();

  _$GUpdateUserData_updateUser._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_updateUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GUpdateUserData_updateUser', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GUpdateUserData_updateUser', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GUpdateUserData_updateUser', 'data');
  }

  @override
  GUpdateUserData_updateUser rebuild(
          void Function(GUpdateUserData_updateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_updateUserBuilder toBuilder() =>
      new GUpdateUserData_updateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_updateUser &&
        G__typename == other.G__typename &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData_updateUser')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GUpdateUserData_updateUserBuilder
    implements
        Builder<GUpdateUserData_updateUser, GUpdateUserData_updateUserBuilder> {
  _$GUpdateUserData_updateUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GUpdateUserData_updateUser_dataBuilder? _data;
  GUpdateUserData_updateUser_dataBuilder get data =>
      _$this._data ??= new GUpdateUserData_updateUser_dataBuilder();
  set data(GUpdateUserData_updateUser_dataBuilder? data) => _$this._data = data;

  GUpdateUserData_updateUserBuilder() {
    GUpdateUserData_updateUser._initializeBuilder(this);
  }

  GUpdateUserData_updateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_updateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_updateUser;
  }

  @override
  void update(void Function(GUpdateUserData_updateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_updateUser build() => _build();

  _$GUpdateUserData_updateUser _build() {
    _$GUpdateUserData_updateUser _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData_updateUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateUserData_updateUser', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GUpdateUserData_updateUser', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GUpdateUserData_updateUser', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData_updateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_updateUser_data
    extends GUpdateUserData_updateUser_data {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? image;

  factory _$GUpdateUserData_updateUser_data(
          [void Function(GUpdateUserData_updateUser_dataBuilder)? updates]) =>
      (new GUpdateUserData_updateUser_dataBuilder()..update(updates))._build();

  _$GUpdateUserData_updateUser_data._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_updateUser_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GUpdateUserData_updateUser_data', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GUpdateUserData_updateUser_data', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GUpdateUserData_updateUser_data', 'email');
  }

  @override
  GUpdateUserData_updateUser_data rebuild(
          void Function(GUpdateUserData_updateUser_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_updateUser_dataBuilder toBuilder() =>
      new GUpdateUserData_updateUser_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_updateUser_data &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData_updateUser_data')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('image', image))
        .toString();
  }
}

class GUpdateUserData_updateUser_dataBuilder
    implements
        Builder<GUpdateUserData_updateUser_data,
            GUpdateUserData_updateUser_dataBuilder> {
  _$GUpdateUserData_updateUser_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GUpdateUserData_updateUser_dataBuilder() {
    GUpdateUserData_updateUser_data._initializeBuilder(this);
  }

  GUpdateUserData_updateUser_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_updateUser_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_updateUser_data;
  }

  @override
  void update(void Function(GUpdateUserData_updateUser_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_updateUser_data build() => _build();

  _$GUpdateUserData_updateUser_data _build() {
    final _$result = _$v ??
        new _$GUpdateUserData_updateUser_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateUserData_updateUser_data', 'G__typename'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GUpdateUserData_updateUser_data', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GUpdateUserData_updateUser_data', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GUpdateUserData_updateUser_data', 'email'),
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
