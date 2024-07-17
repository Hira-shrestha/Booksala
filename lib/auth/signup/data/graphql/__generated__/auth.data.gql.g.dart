// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateUserData> _$gCreateUserDataSerializer =
    new _$GCreateUserDataSerializer();
Serializer<GCreateUserData_createUser> _$gCreateUserDataCreateUserSerializer =
    new _$GCreateUserData_createUserSerializer();
Serializer<GCreateUserData_createUser_data>
    _$gCreateUserDataCreateUserDataSerializer =
    new _$GCreateUserData_createUser_dataSerializer();
Serializer<GBooksData> _$gBooksDataSerializer = new _$GBooksDataSerializer();
Serializer<GBooksData_books> _$gBooksDataBooksSerializer =
    new _$GBooksData_booksSerializer();
Serializer<GBooksData_books_data> _$gBooksDataBooksDataSerializer =
    new _$GBooksData_books_dataSerializer();
Serializer<GUploadImageData> _$gUploadImageDataSerializer =
    new _$GUploadImageDataSerializer();

class _$GCreateUserDataSerializer
    implements StructuredSerializer<GCreateUserData> {
  @override
  final Iterable<Type> types = const [GCreateUserData, _$GCreateUserData];
  @override
  final String wireName = 'GCreateUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createUser',
      serializers.serialize(object.createUser,
          specifiedType: const FullType(GCreateUserData_createUser)),
    ];

    return result;
  }

  @override
  GCreateUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserDataBuilder();

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
        case 'createUser':
          result.createUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreateUserData_createUser))!
              as GCreateUserData_createUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserData_createUserSerializer
    implements StructuredSerializer<GCreateUserData_createUser> {
  @override
  final Iterable<Type> types = const [
    GCreateUserData_createUser,
    _$GCreateUserData_createUser
  ];
  @override
  final String wireName = 'GCreateUserData_createUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateUserData_createUser object,
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
          specifiedType: const FullType(GCreateUserData_createUser_data)),
    ];

    return result;
  }

  @override
  GCreateUserData_createUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserData_createUserBuilder();

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
                      const FullType(GCreateUserData_createUser_data))!
              as GCreateUserData_createUser_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserData_createUser_dataSerializer
    implements StructuredSerializer<GCreateUserData_createUser_data> {
  @override
  final Iterable<Type> types = const [
    GCreateUserData_createUser_data,
    _$GCreateUserData_createUser_data
  ];
  @override
  final String wireName = 'GCreateUserData_createUser_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateUserData_createUser_data object,
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
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDateTime)),
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
  GCreateUserData_createUser_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserData_createUser_dataBuilder();

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
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GBooksDataSerializer implements StructuredSerializer<GBooksData> {
  @override
  final Iterable<Type> types = const [GBooksData, _$GBooksData];
  @override
  final String wireName = 'GBooksData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBooksData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'books',
      serializers.serialize(object.books,
          specifiedType: const FullType(GBooksData_books)),
    ];

    return result;
  }

  @override
  GBooksData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBooksDataBuilder();

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
        case 'books':
          result.books.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GBooksData_books))!
              as GBooksData_books);
          break;
      }
    }

    return result.build();
  }
}

class _$GBooksData_booksSerializer
    implements StructuredSerializer<GBooksData_books> {
  @override
  final Iterable<Type> types = const [GBooksData_books, _$GBooksData_books];
  @override
  final String wireName = 'GBooksData_books';

  @override
  Iterable<Object?> serialize(Serializers serializers, GBooksData_books object,
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
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(double)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GBooksData_books_data)])),
    ];

    return result;
  }

  @override
  GBooksData_books deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBooksData_booksBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GBooksData_books_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GBooksData_books_dataSerializer
    implements StructuredSerializer<GBooksData_books_data> {
  @override
  final Iterable<Type> types = const [
    GBooksData_books_data,
    _$GBooksData_books_data
  ];
  @override
  final String wireName = 'GBooksData_books_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBooksData_books_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'bookId',
      serializers.serialize(object.bookId,
          specifiedType: const FullType(String)),
      'bookName',
      serializers.serialize(object.bookName,
          specifiedType: const FullType(String)),
      'publishedDate',
      serializers.serialize(object.publishedDate,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'genre',
      serializers.serialize(object.genre,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];

    return result;
  }

  @override
  GBooksData_books_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBooksData_books_dataBuilder();

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
        case 'bookId':
          result.bookId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'bookName':
          result.bookName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'publishedDate':
          result.publishedDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GUploadImageDataSerializer
    implements StructuredSerializer<GUploadImageData> {
  @override
  final Iterable<Type> types = const [GUploadImageData, _$GUploadImageData];
  @override
  final String wireName = 'GUploadImageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUploadImageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'uploadImage',
      serializers.serialize(object.uploadImage,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUploadImageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUploadImageDataBuilder();

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
        case 'uploadImage':
          result.uploadImage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserData extends GCreateUserData {
  @override
  final String G__typename;
  @override
  final GCreateUserData_createUser createUser;

  factory _$GCreateUserData([void Function(GCreateUserDataBuilder)? updates]) =>
      (new GCreateUserDataBuilder()..update(updates))._build();

  _$GCreateUserData._({required this.G__typename, required this.createUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createUser, r'GCreateUserData', 'createUser');
  }

  @override
  GCreateUserData rebuild(void Function(GCreateUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserDataBuilder toBuilder() =>
      new GCreateUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserData &&
        G__typename == other.G__typename &&
        createUser == other.createUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserData')
          ..add('G__typename', G__typename)
          ..add('createUser', createUser))
        .toString();
  }
}

class GCreateUserDataBuilder
    implements Builder<GCreateUserData, GCreateUserDataBuilder> {
  _$GCreateUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateUserData_createUserBuilder? _createUser;
  GCreateUserData_createUserBuilder get createUser =>
      _$this._createUser ??= new GCreateUserData_createUserBuilder();
  set createUser(GCreateUserData_createUserBuilder? createUser) =>
      _$this._createUser = createUser;

  GCreateUserDataBuilder() {
    GCreateUserData._initializeBuilder(this);
  }

  GCreateUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createUser = $v.createUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserData;
  }

  @override
  void update(void Function(GCreateUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserData build() => _build();

  _$GCreateUserData _build() {
    _$GCreateUserData _$result;
    try {
      _$result = _$v ??
          new _$GCreateUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateUserData', 'G__typename'),
              createUser: createUser.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createUser';
        createUser.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserData_createUser extends GCreateUserData_createUser {
  @override
  final String G__typename;
  @override
  final double status;
  @override
  final String message;
  @override
  final GCreateUserData_createUser_data data;

  factory _$GCreateUserData_createUser(
          [void Function(GCreateUserData_createUserBuilder)? updates]) =>
      (new GCreateUserData_createUserBuilder()..update(updates))._build();

  _$GCreateUserData_createUser._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateUserData_createUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GCreateUserData_createUser', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GCreateUserData_createUser', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateUserData_createUser', 'data');
  }

  @override
  GCreateUserData_createUser rebuild(
          void Function(GCreateUserData_createUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserData_createUserBuilder toBuilder() =>
      new GCreateUserData_createUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserData_createUser &&
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
    return (newBuiltValueToStringHelper(r'GCreateUserData_createUser')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GCreateUserData_createUserBuilder
    implements
        Builder<GCreateUserData_createUser, GCreateUserData_createUserBuilder> {
  _$GCreateUserData_createUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GCreateUserData_createUser_dataBuilder? _data;
  GCreateUserData_createUser_dataBuilder get data =>
      _$this._data ??= new GCreateUserData_createUser_dataBuilder();
  set data(GCreateUserData_createUser_dataBuilder? data) => _$this._data = data;

  GCreateUserData_createUserBuilder() {
    GCreateUserData_createUser._initializeBuilder(this);
  }

  GCreateUserData_createUserBuilder get _$this {
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
  void replace(GCreateUserData_createUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserData_createUser;
  }

  @override
  void update(void Function(GCreateUserData_createUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserData_createUser build() => _build();

  _$GCreateUserData_createUser _build() {
    _$GCreateUserData_createUser _$result;
    try {
      _$result = _$v ??
          new _$GCreateUserData_createUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateUserData_createUser', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GCreateUserData_createUser', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GCreateUserData_createUser', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUserData_createUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserData_createUser_data
    extends GCreateUserData_createUser_data {
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
  @override
  final _i2.GDateTime createdAt;
  @override
  final _i2.GDateTime updatedAt;

  factory _$GCreateUserData_createUser_data(
          [void Function(GCreateUserData_createUser_dataBuilder)? updates]) =>
      (new GCreateUserData_createUser_dataBuilder()..update(updates))._build();

  _$GCreateUserData_createUser_data._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.image,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateUserData_createUser_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GCreateUserData_createUser_data', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GCreateUserData_createUser_data', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GCreateUserData_createUser_data', 'email');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GCreateUserData_createUser_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GCreateUserData_createUser_data', 'updatedAt');
  }

  @override
  GCreateUserData_createUser_data rebuild(
          void Function(GCreateUserData_createUser_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserData_createUser_dataBuilder toBuilder() =>
      new GCreateUserData_createUser_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserData_createUser_data &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        image == other.image &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserData_createUser_data')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('image', image)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GCreateUserData_createUser_dataBuilder
    implements
        Builder<GCreateUserData_createUser_data,
            GCreateUserData_createUser_dataBuilder> {
  _$GCreateUserData_createUser_data? _$v;

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

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  _i2.GDateTimeBuilder? _updatedAt;
  _i2.GDateTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateTimeBuilder();
  set updatedAt(_i2.GDateTimeBuilder? updatedAt) =>
      _$this._updatedAt = updatedAt;

  GCreateUserData_createUser_dataBuilder() {
    GCreateUserData_createUser_data._initializeBuilder(this);
  }

  GCreateUserData_createUser_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _image = $v.image;
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserData_createUser_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserData_createUser_data;
  }

  @override
  void update(void Function(GCreateUserData_createUser_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserData_createUser_data build() => _build();

  _$GCreateUserData_createUser_data _build() {
    _$GCreateUserData_createUser_data _$result;
    try {
      _$result = _$v ??
          new _$GCreateUserData_createUser_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCreateUserData_createUser_data', 'G__typename'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'GCreateUserData_createUser_data', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, r'GCreateUserData_createUser_data', 'lastName'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'GCreateUserData_createUser_data', 'email'),
              image: image,
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateUserData_createUser_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBooksData extends GBooksData {
  @override
  final String G__typename;
  @override
  final GBooksData_books books;

  factory _$GBooksData([void Function(GBooksDataBuilder)? updates]) =>
      (new GBooksDataBuilder()..update(updates))._build();

  _$GBooksData._({required this.G__typename, required this.books}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBooksData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(books, r'GBooksData', 'books');
  }

  @override
  GBooksData rebuild(void Function(GBooksDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBooksDataBuilder toBuilder() => new GBooksDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBooksData &&
        G__typename == other.G__typename &&
        books == other.books;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, books.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBooksData')
          ..add('G__typename', G__typename)
          ..add('books', books))
        .toString();
  }
}

class GBooksDataBuilder implements Builder<GBooksData, GBooksDataBuilder> {
  _$GBooksData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GBooksData_booksBuilder? _books;
  GBooksData_booksBuilder get books =>
      _$this._books ??= new GBooksData_booksBuilder();
  set books(GBooksData_booksBuilder? books) => _$this._books = books;

  GBooksDataBuilder() {
    GBooksData._initializeBuilder(this);
  }

  GBooksDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _books = $v.books.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBooksData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBooksData;
  }

  @override
  void update(void Function(GBooksDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBooksData build() => _build();

  _$GBooksData _build() {
    _$GBooksData _$result;
    try {
      _$result = _$v ??
          new _$GBooksData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBooksData', 'G__typename'),
              books: books.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'books';
        books.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBooksData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBooksData_books extends GBooksData_books {
  @override
  final String G__typename;
  @override
  final double status;
  @override
  final String message;
  @override
  final double page;
  @override
  final double total;
  @override
  final BuiltList<GBooksData_books_data> data;

  factory _$GBooksData_books(
          [void Function(GBooksData_booksBuilder)? updates]) =>
      (new GBooksData_booksBuilder()..update(updates))._build();

  _$GBooksData_books._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.page,
      required this.total,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBooksData_books', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GBooksData_books', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GBooksData_books', 'message');
    BuiltValueNullFieldError.checkNotNull(page, r'GBooksData_books', 'page');
    BuiltValueNullFieldError.checkNotNull(total, r'GBooksData_books', 'total');
    BuiltValueNullFieldError.checkNotNull(data, r'GBooksData_books', 'data');
  }

  @override
  GBooksData_books rebuild(void Function(GBooksData_booksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBooksData_booksBuilder toBuilder() =>
      new GBooksData_booksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBooksData_books &&
        G__typename == other.G__typename &&
        status == other.status &&
        message == other.message &&
        page == other.page &&
        total == other.total &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBooksData_books')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('page', page)
          ..add('total', total)
          ..add('data', data))
        .toString();
  }
}

class GBooksData_booksBuilder
    implements Builder<GBooksData_books, GBooksData_booksBuilder> {
  _$GBooksData_books? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  double? _page;
  double? get page => _$this._page;
  set page(double? page) => _$this._page = page;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  ListBuilder<GBooksData_books_data>? _data;
  ListBuilder<GBooksData_books_data> get data =>
      _$this._data ??= new ListBuilder<GBooksData_books_data>();
  set data(ListBuilder<GBooksData_books_data>? data) => _$this._data = data;

  GBooksData_booksBuilder() {
    GBooksData_books._initializeBuilder(this);
  }

  GBooksData_booksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _message = $v.message;
      _page = $v.page;
      _total = $v.total;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBooksData_books other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBooksData_books;
  }

  @override
  void update(void Function(GBooksData_booksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBooksData_books build() => _build();

  _$GBooksData_books _build() {
    _$GBooksData_books _$result;
    try {
      _$result = _$v ??
          new _$GBooksData_books._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBooksData_books', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GBooksData_books', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GBooksData_books', 'message'),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'GBooksData_books', 'page'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'GBooksData_books', 'total'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBooksData_books', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBooksData_books_data extends GBooksData_books_data {
  @override
  final String G__typename;
  @override
  final String bookId;
  @override
  final String bookName;
  @override
  final String publishedDate;
  @override
  final String description;
  @override
  final double price;
  @override
  final String genre;
  @override
  final String image;
  @override
  final _i2.GDateTime createdAt;
  @override
  final _i2.GDateTime updatedAt;

  factory _$GBooksData_books_data(
          [void Function(GBooksData_books_dataBuilder)? updates]) =>
      (new GBooksData_books_dataBuilder()..update(updates))._build();

  _$GBooksData_books_data._(
      {required this.G__typename,
      required this.bookId,
      required this.bookName,
      required this.publishedDate,
      required this.description,
      required this.price,
      required this.genre,
      required this.image,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBooksData_books_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'GBooksData_books_data', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GBooksData_books_data', 'bookName');
    BuiltValueNullFieldError.checkNotNull(
        publishedDate, r'GBooksData_books_data', 'publishedDate');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GBooksData_books_data', 'description');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GBooksData_books_data', 'price');
    BuiltValueNullFieldError.checkNotNull(
        genre, r'GBooksData_books_data', 'genre');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GBooksData_books_data', 'image');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GBooksData_books_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GBooksData_books_data', 'updatedAt');
  }

  @override
  GBooksData_books_data rebuild(
          void Function(GBooksData_books_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBooksData_books_dataBuilder toBuilder() =>
      new GBooksData_books_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBooksData_books_data &&
        G__typename == other.G__typename &&
        bookId == other.bookId &&
        bookName == other.bookName &&
        publishedDate == other.publishedDate &&
        description == other.description &&
        price == other.price &&
        genre == other.genre &&
        image == other.image &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, bookId.hashCode);
    _$hash = $jc(_$hash, bookName.hashCode);
    _$hash = $jc(_$hash, publishedDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBooksData_books_data')
          ..add('G__typename', G__typename)
          ..add('bookId', bookId)
          ..add('bookName', bookName)
          ..add('publishedDate', publishedDate)
          ..add('description', description)
          ..add('price', price)
          ..add('genre', genre)
          ..add('image', image)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GBooksData_books_dataBuilder
    implements Builder<GBooksData_books_data, GBooksData_books_dataBuilder> {
  _$GBooksData_books_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _bookId;
  String? get bookId => _$this._bookId;
  set bookId(String? bookId) => _$this._bookId = bookId;

  String? _bookName;
  String? get bookName => _$this._bookName;
  set bookName(String? bookName) => _$this._bookName = bookName;

  String? _publishedDate;
  String? get publishedDate => _$this._publishedDate;
  set publishedDate(String? publishedDate) =>
      _$this._publishedDate = publishedDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  _i2.GDateTimeBuilder? _updatedAt;
  _i2.GDateTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateTimeBuilder();
  set updatedAt(_i2.GDateTimeBuilder? updatedAt) =>
      _$this._updatedAt = updatedAt;

  GBooksData_books_dataBuilder() {
    GBooksData_books_data._initializeBuilder(this);
  }

  GBooksData_books_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _bookId = $v.bookId;
      _bookName = $v.bookName;
      _publishedDate = $v.publishedDate;
      _description = $v.description;
      _price = $v.price;
      _genre = $v.genre;
      _image = $v.image;
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBooksData_books_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBooksData_books_data;
  }

  @override
  void update(void Function(GBooksData_books_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBooksData_books_data build() => _build();

  _$GBooksData_books_data _build() {
    _$GBooksData_books_data _$result;
    try {
      _$result = _$v ??
          new _$GBooksData_books_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GBooksData_books_data', 'G__typename'),
              bookId: BuiltValueNullFieldError.checkNotNull(
                  bookId, r'GBooksData_books_data', 'bookId'),
              bookName: BuiltValueNullFieldError.checkNotNull(
                  bookName, r'GBooksData_books_data', 'bookName'),
              publishedDate: BuiltValueNullFieldError.checkNotNull(
                  publishedDate, r'GBooksData_books_data', 'publishedDate'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GBooksData_books_data', 'description'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'GBooksData_books_data', 'price'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, r'GBooksData_books_data', 'genre'),
              image: BuiltValueNullFieldError.checkNotNull(
                  image, r'GBooksData_books_data', 'image'),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBooksData_books_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUploadImageData extends GUploadImageData {
  @override
  final String G__typename;
  @override
  final String uploadImage;

  factory _$GUploadImageData(
          [void Function(GUploadImageDataBuilder)? updates]) =>
      (new GUploadImageDataBuilder()..update(updates))._build();

  _$GUploadImageData._({required this.G__typename, required this.uploadImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUploadImageData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        uploadImage, r'GUploadImageData', 'uploadImage');
  }

  @override
  GUploadImageData rebuild(void Function(GUploadImageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadImageDataBuilder toBuilder() =>
      new GUploadImageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUploadImageData &&
        G__typename == other.G__typename &&
        uploadImage == other.uploadImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, uploadImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUploadImageData')
          ..add('G__typename', G__typename)
          ..add('uploadImage', uploadImage))
        .toString();
  }
}

class GUploadImageDataBuilder
    implements Builder<GUploadImageData, GUploadImageDataBuilder> {
  _$GUploadImageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _uploadImage;
  String? get uploadImage => _$this._uploadImage;
  set uploadImage(String? uploadImage) => _$this._uploadImage = uploadImage;

  GUploadImageDataBuilder() {
    GUploadImageData._initializeBuilder(this);
  }

  GUploadImageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _uploadImage = $v.uploadImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUploadImageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUploadImageData;
  }

  @override
  void update(void Function(GUploadImageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUploadImageData build() => _build();

  _$GUploadImageData _build() {
    final _$result = _$v ??
        new _$GUploadImageData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUploadImageData', 'G__typename'),
            uploadImage: BuiltValueNullFieldError.checkNotNull(
                uploadImage, r'GUploadImageData', 'uploadImage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
