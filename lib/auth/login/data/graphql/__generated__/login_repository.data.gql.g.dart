// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_repository.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginData> _$gLoginDataSerializer = new _$GLoginDataSerializer();
Serializer<GLoginData_login> _$gLoginDataLoginSerializer =
    new _$GLoginData_loginSerializer();
Serializer<GLoginData_login_data> _$gLoginDataLoginDataSerializer =
    new _$GLoginData_login_dataSerializer();

class _$GLoginDataSerializer implements StructuredSerializer<GLoginData> {
  @override
  final Iterable<Type> types = const [GLoginData, _$GLoginData];
  @override
  final String wireName = 'GLoginData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(GLoginData_login)),
    ];

    return result;
  }

  @override
  GLoginData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginDataBuilder();

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
        case 'login':
          result.login.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLoginData_login))!
              as GLoginData_login);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_loginSerializer
    implements StructuredSerializer<GLoginData_login> {
  @override
  final Iterable<Type> types = const [GLoginData_login, _$GLoginData_login];
  @override
  final String wireName = 'GLoginData_login';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoginData_login object,
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
          specifiedType: const FullType(GLoginData_login_data)),
    ];

    return result;
  }

  @override
  GLoginData_login deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_loginBuilder();

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
                  specifiedType: const FullType(GLoginData_login_data))!
              as GLoginData_login_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData_login_dataSerializer
    implements StructuredSerializer<GLoginData_login_data> {
  @override
  final Iterable<Type> types = const [
    GLoginData_login_data,
    _$GLoginData_login_data
  ];
  @override
  final String wireName = 'GLoginData_login_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginData_login_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'access_token',
      serializers.serialize(object.access_token,
          specifiedType: const FullType(String)),
      'refresh_token',
      serializers.serialize(object.refresh_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginData_login_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginData_login_dataBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
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
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refresh_token':
          result.refresh_token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginData extends GLoginData {
  @override
  final String G__typename;
  @override
  final GLoginData_login login;

  factory _$GLoginData([void Function(GLoginDataBuilder)? updates]) =>
      (new GLoginDataBuilder()..update(updates))._build();

  _$GLoginData._({required this.G__typename, required this.login}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLoginData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(login, r'GLoginData', 'login');
  }

  @override
  GLoginData rebuild(void Function(GLoginDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginDataBuilder toBuilder() => new GLoginDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData &&
        G__typename == other.G__typename &&
        login == other.login;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginData')
          ..add('G__typename', G__typename)
          ..add('login', login))
        .toString();
  }
}

class GLoginDataBuilder implements Builder<GLoginData, GLoginDataBuilder> {
  _$GLoginData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLoginData_loginBuilder? _login;
  GLoginData_loginBuilder get login =>
      _$this._login ??= new GLoginData_loginBuilder();
  set login(GLoginData_loginBuilder? login) => _$this._login = login;

  GLoginDataBuilder() {
    GLoginData._initializeBuilder(this);
  }

  GLoginDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _login = $v.login.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData;
  }

  @override
  void update(void Function(GLoginDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData build() => _build();

  _$GLoginData _build() {
    _$GLoginData _$result;
    try {
      _$result = _$v ??
          new _$GLoginData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLoginData', 'G__typename'),
              login: login.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'login';
        login.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLoginData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_login extends GLoginData_login {
  @override
  final String G__typename;
  @override
  final double status;
  @override
  final String message;
  @override
  final GLoginData_login_data data;

  factory _$GLoginData_login(
          [void Function(GLoginData_loginBuilder)? updates]) =>
      (new GLoginData_loginBuilder()..update(updates))._build();

  _$GLoginData_login._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLoginData_login', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GLoginData_login', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GLoginData_login', 'message');
    BuiltValueNullFieldError.checkNotNull(data, r'GLoginData_login', 'data');
  }

  @override
  GLoginData_login rebuild(void Function(GLoginData_loginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_loginBuilder toBuilder() =>
      new GLoginData_loginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_login &&
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
    return (newBuiltValueToStringHelper(r'GLoginData_login')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GLoginData_loginBuilder
    implements Builder<GLoginData_login, GLoginData_loginBuilder> {
  _$GLoginData_login? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GLoginData_login_dataBuilder? _data;
  GLoginData_login_dataBuilder get data =>
      _$this._data ??= new GLoginData_login_dataBuilder();
  set data(GLoginData_login_dataBuilder? data) => _$this._data = data;

  GLoginData_loginBuilder() {
    GLoginData_login._initializeBuilder(this);
  }

  GLoginData_loginBuilder get _$this {
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
  void replace(GLoginData_login other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_login;
  }

  @override
  void update(void Function(GLoginData_loginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData_login build() => _build();

  _$GLoginData_login _build() {
    _$GLoginData_login _$result;
    try {
      _$result = _$v ??
          new _$GLoginData_login._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLoginData_login', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GLoginData_login', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GLoginData_login', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLoginData_login', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoginData_login_data extends GLoginData_login_data {
  @override
  final String G__typename;
  @override
  final String email;
  @override
  final String userId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String access_token;
  @override
  final String refresh_token;

  factory _$GLoginData_login_data(
          [void Function(GLoginData_login_dataBuilder)? updates]) =>
      (new GLoginData_login_dataBuilder()..update(updates))._build();

  _$GLoginData_login_data._(
      {required this.G__typename,
      required this.email,
      required this.userId,
      required this.firstName,
      required this.lastName,
      required this.createdAt,
      required this.updatedAt,
      required this.access_token,
      required this.refresh_token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLoginData_login_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GLoginData_login_data', 'email');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GLoginData_login_data', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GLoginData_login_data', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GLoginData_login_data', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GLoginData_login_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GLoginData_login_data', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        access_token, r'GLoginData_login_data', 'access_token');
    BuiltValueNullFieldError.checkNotNull(
        refresh_token, r'GLoginData_login_data', 'refresh_token');
  }

  @override
  GLoginData_login_data rebuild(
          void Function(GLoginData_login_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginData_login_dataBuilder toBuilder() =>
      new GLoginData_login_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginData_login_data &&
        G__typename == other.G__typename &&
        email == other.email &&
        userId == other.userId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        access_token == other.access_token &&
        refresh_token == other.refresh_token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, access_token.hashCode);
    _$hash = $jc(_$hash, refresh_token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoginData_login_data')
          ..add('G__typename', G__typename)
          ..add('email', email)
          ..add('userId', userId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('access_token', access_token)
          ..add('refresh_token', refresh_token))
        .toString();
  }
}

class GLoginData_login_dataBuilder
    implements Builder<GLoginData_login_data, GLoginData_login_dataBuilder> {
  _$GLoginData_login_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _access_token;
  String? get access_token => _$this._access_token;
  set access_token(String? access_token) => _$this._access_token = access_token;

  String? _refresh_token;
  String? get refresh_token => _$this._refresh_token;
  set refresh_token(String? refresh_token) =>
      _$this._refresh_token = refresh_token;

  GLoginData_login_dataBuilder() {
    GLoginData_login_data._initializeBuilder(this);
  }

  GLoginData_login_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _email = $v.email;
      _userId = $v.userId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _access_token = $v.access_token;
      _refresh_token = $v.refresh_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginData_login_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginData_login_data;
  }

  @override
  void update(void Function(GLoginData_login_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoginData_login_data build() => _build();

  _$GLoginData_login_data _build() {
    final _$result = _$v ??
        new _$GLoginData_login_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLoginData_login_data', 'G__typename'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GLoginData_login_data', 'email'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GLoginData_login_data', 'userId'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GLoginData_login_data', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GLoginData_login_data', 'lastName'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'GLoginData_login_data', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'GLoginData_login_data', 'updatedAt'),
            access_token: BuiltValueNullFieldError.checkNotNull(
                access_token, r'GLoginData_login_data', 'access_token'),
            refresh_token:
                BuiltValueNullFieldError.checkNotNull(refresh_token, r'GLoginData_login_data', 'refresh_token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
