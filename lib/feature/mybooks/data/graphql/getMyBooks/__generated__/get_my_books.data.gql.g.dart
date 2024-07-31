// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_books.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetBookByAuthorData> _$gGetBookByAuthorDataSerializer =
    new _$GGetBookByAuthorDataSerializer();
Serializer<GGetBookByAuthorData_getBookByAuthor>
    _$gGetBookByAuthorDataGetBookByAuthorSerializer =
    new _$GGetBookByAuthorData_getBookByAuthorSerializer();
Serializer<GGetBookByAuthorData_getBookByAuthor_data>
    _$gGetBookByAuthorDataGetBookByAuthorDataSerializer =
    new _$GGetBookByAuthorData_getBookByAuthor_dataSerializer();
Serializer<GGetBookByAuthorData_getBookByAuthor_data_author>
    _$gGetBookByAuthorDataGetBookByAuthorDataAuthorSerializer =
    new _$GGetBookByAuthorData_getBookByAuthor_data_authorSerializer();

class _$GGetBookByAuthorDataSerializer
    implements StructuredSerializer<GGetBookByAuthorData> {
  @override
  final Iterable<Type> types = const [
    GGetBookByAuthorData,
    _$GGetBookByAuthorData
  ];
  @override
  final String wireName = 'GGetBookByAuthorData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetBookByAuthorData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getBookByAuthor',
      serializers.serialize(object.getBookByAuthor,
          specifiedType: const FullType(GGetBookByAuthorData_getBookByAuthor)),
    ];

    return result;
  }

  @override
  GGetBookByAuthorData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetBookByAuthorDataBuilder();

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
        case 'getBookByAuthor':
          result.getBookByAuthor.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetBookByAuthorData_getBookByAuthor))!
              as GGetBookByAuthorData_getBookByAuthor);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetBookByAuthorData_getBookByAuthorSerializer
    implements StructuredSerializer<GGetBookByAuthorData_getBookByAuthor> {
  @override
  final Iterable<Type> types = const [
    GGetBookByAuthorData_getBookByAuthor,
    _$GGetBookByAuthorData_getBookByAuthor
  ];
  @override
  final String wireName = 'GGetBookByAuthorData_getBookByAuthor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetBookByAuthorData_getBookByAuthor object,
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
          specifiedType: const FullType(BuiltList, const [
            const FullType(GGetBookByAuthorData_getBookByAuthor_data)
          ])),
    ];

    return result;
  }

  @override
  GGetBookByAuthorData_getBookByAuthor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetBookByAuthorData_getBookByAuthorBuilder();

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
                const FullType(GGetBookByAuthorData_getBookByAuthor_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetBookByAuthorData_getBookByAuthor_dataSerializer
    implements StructuredSerializer<GGetBookByAuthorData_getBookByAuthor_data> {
  @override
  final Iterable<Type> types = const [
    GGetBookByAuthorData_getBookByAuthor_data,
    _$GGetBookByAuthorData_getBookByAuthor_data
  ];
  @override
  final String wireName = 'GGetBookByAuthorData_getBookByAuthor_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetBookByAuthorData_getBookByAuthor_data object,
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
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
      'author',
      serializers.serialize(object.author,
          specifiedType:
              const FullType(GGetBookByAuthorData_getBookByAuthor_data_author)),
    ];

    return result;
  }

  @override
  GGetBookByAuthorData_getBookByAuthor_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetBookByAuthorData_getBookByAuthor_dataBuilder();

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
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetBookByAuthorData_getBookByAuthor_data_author))!
              as GGetBookByAuthorData_getBookByAuthor_data_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetBookByAuthorData_getBookByAuthor_data_authorSerializer
    implements
        StructuredSerializer<GGetBookByAuthorData_getBookByAuthor_data_author> {
  @override
  final Iterable<Type> types = const [
    GGetBookByAuthorData_getBookByAuthor_data_author,
    _$GGetBookByAuthorData_getBookByAuthor_data_author
  ];
  @override
  final String wireName = 'GGetBookByAuthorData_getBookByAuthor_data_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetBookByAuthorData_getBookByAuthor_data_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authorId;
    if (value != null) {
      result
        ..add('authorId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authorImage;
    if (value != null) {
      result
        ..add('authorImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetBookByAuthorData_getBookByAuthor_data_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetBookByAuthorData_getBookByAuthor_data_authorBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'authorId':
          result.authorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'authorImage':
          result.authorImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetBookByAuthorData extends GGetBookByAuthorData {
  @override
  final String G__typename;
  @override
  final GGetBookByAuthorData_getBookByAuthor getBookByAuthor;

  factory _$GGetBookByAuthorData(
          [void Function(GGetBookByAuthorDataBuilder)? updates]) =>
      (new GGetBookByAuthorDataBuilder()..update(updates))._build();

  _$GGetBookByAuthorData._(
      {required this.G__typename, required this.getBookByAuthor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetBookByAuthorData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getBookByAuthor, r'GGetBookByAuthorData', 'getBookByAuthor');
  }

  @override
  GGetBookByAuthorData rebuild(
          void Function(GGetBookByAuthorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetBookByAuthorDataBuilder toBuilder() =>
      new GGetBookByAuthorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetBookByAuthorData &&
        G__typename == other.G__typename &&
        getBookByAuthor == other.getBookByAuthor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getBookByAuthor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetBookByAuthorData')
          ..add('G__typename', G__typename)
          ..add('getBookByAuthor', getBookByAuthor))
        .toString();
  }
}

class GGetBookByAuthorDataBuilder
    implements Builder<GGetBookByAuthorData, GGetBookByAuthorDataBuilder> {
  _$GGetBookByAuthorData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetBookByAuthorData_getBookByAuthorBuilder? _getBookByAuthor;
  GGetBookByAuthorData_getBookByAuthorBuilder get getBookByAuthor =>
      _$this._getBookByAuthor ??=
          new GGetBookByAuthorData_getBookByAuthorBuilder();
  set getBookByAuthor(
          GGetBookByAuthorData_getBookByAuthorBuilder? getBookByAuthor) =>
      _$this._getBookByAuthor = getBookByAuthor;

  GGetBookByAuthorDataBuilder() {
    GGetBookByAuthorData._initializeBuilder(this);
  }

  GGetBookByAuthorDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getBookByAuthor = $v.getBookByAuthor.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetBookByAuthorData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetBookByAuthorData;
  }

  @override
  void update(void Function(GGetBookByAuthorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetBookByAuthorData build() => _build();

  _$GGetBookByAuthorData _build() {
    _$GGetBookByAuthorData _$result;
    try {
      _$result = _$v ??
          new _$GGetBookByAuthorData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetBookByAuthorData', 'G__typename'),
              getBookByAuthor: getBookByAuthor.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getBookByAuthor';
        getBookByAuthor.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetBookByAuthorData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetBookByAuthorData_getBookByAuthor
    extends GGetBookByAuthorData_getBookByAuthor {
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
  final BuiltList<GGetBookByAuthorData_getBookByAuthor_data> data;

  factory _$GGetBookByAuthorData_getBookByAuthor(
          [void Function(GGetBookByAuthorData_getBookByAuthorBuilder)?
              updates]) =>
      (new GGetBookByAuthorData_getBookByAuthorBuilder()..update(updates))
          ._build();

  _$GGetBookByAuthorData_getBookByAuthor._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.page,
      required this.total,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetBookByAuthorData_getBookByAuthor', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GGetBookByAuthorData_getBookByAuthor', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GGetBookByAuthorData_getBookByAuthor', 'message');
    BuiltValueNullFieldError.checkNotNull(
        page, r'GGetBookByAuthorData_getBookByAuthor', 'page');
    BuiltValueNullFieldError.checkNotNull(
        total, r'GGetBookByAuthorData_getBookByAuthor', 'total');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GGetBookByAuthorData_getBookByAuthor', 'data');
  }

  @override
  GGetBookByAuthorData_getBookByAuthor rebuild(
          void Function(GGetBookByAuthorData_getBookByAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetBookByAuthorData_getBookByAuthorBuilder toBuilder() =>
      new GGetBookByAuthorData_getBookByAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetBookByAuthorData_getBookByAuthor &&
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
    return (newBuiltValueToStringHelper(r'GGetBookByAuthorData_getBookByAuthor')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('page', page)
          ..add('total', total)
          ..add('data', data))
        .toString();
  }
}

class GGetBookByAuthorData_getBookByAuthorBuilder
    implements
        Builder<GGetBookByAuthorData_getBookByAuthor,
            GGetBookByAuthorData_getBookByAuthorBuilder> {
  _$GGetBookByAuthorData_getBookByAuthor? _$v;

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

  ListBuilder<GGetBookByAuthorData_getBookByAuthor_data>? _data;
  ListBuilder<GGetBookByAuthorData_getBookByAuthor_data> get data =>
      _$this._data ??=
          new ListBuilder<GGetBookByAuthorData_getBookByAuthor_data>();
  set data(ListBuilder<GGetBookByAuthorData_getBookByAuthor_data>? data) =>
      _$this._data = data;

  GGetBookByAuthorData_getBookByAuthorBuilder() {
    GGetBookByAuthorData_getBookByAuthor._initializeBuilder(this);
  }

  GGetBookByAuthorData_getBookByAuthorBuilder get _$this {
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
  void replace(GGetBookByAuthorData_getBookByAuthor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetBookByAuthorData_getBookByAuthor;
  }

  @override
  void update(
      void Function(GGetBookByAuthorData_getBookByAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetBookByAuthorData_getBookByAuthor build() => _build();

  _$GGetBookByAuthorData_getBookByAuthor _build() {
    _$GGetBookByAuthorData_getBookByAuthor _$result;
    try {
      _$result = _$v ??
          new _$GGetBookByAuthorData_getBookByAuthor._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GGetBookByAuthorData_getBookByAuthor', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GGetBookByAuthorData_getBookByAuthor', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GGetBookByAuthorData_getBookByAuthor', 'message'),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'GGetBookByAuthorData_getBookByAuthor', 'page'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'GGetBookByAuthorData_getBookByAuthor', 'total'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetBookByAuthorData_getBookByAuthor',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetBookByAuthorData_getBookByAuthor_data
    extends GGetBookByAuthorData_getBookByAuthor_data {
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
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final GGetBookByAuthorData_getBookByAuthor_data_author author;

  factory _$GGetBookByAuthorData_getBookByAuthor_data(
          [void Function(GGetBookByAuthorData_getBookByAuthor_dataBuilder)?
              updates]) =>
      (new GGetBookByAuthorData_getBookByAuthor_dataBuilder()..update(updates))
          ._build();

  _$GGetBookByAuthorData_getBookByAuthor_data._(
      {required this.G__typename,
      required this.bookId,
      required this.bookName,
      required this.publishedDate,
      required this.description,
      required this.price,
      required this.genre,
      required this.image,
      required this.createdAt,
      required this.updatedAt,
      required this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetBookByAuthorData_getBookByAuthor_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'GGetBookByAuthorData_getBookByAuthor_data', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GGetBookByAuthorData_getBookByAuthor_data', 'bookName');
    BuiltValueNullFieldError.checkNotNull(publishedDate,
        r'GGetBookByAuthorData_getBookByAuthor_data', 'publishedDate');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GGetBookByAuthorData_getBookByAuthor_data', 'description');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GGetBookByAuthorData_getBookByAuthor_data', 'price');
    BuiltValueNullFieldError.checkNotNull(
        genre, r'GGetBookByAuthorData_getBookByAuthor_data', 'genre');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GGetBookByAuthorData_getBookByAuthor_data', 'image');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GGetBookByAuthorData_getBookByAuthor_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GGetBookByAuthorData_getBookByAuthor_data', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        author, r'GGetBookByAuthorData_getBookByAuthor_data', 'author');
  }

  @override
  GGetBookByAuthorData_getBookByAuthor_data rebuild(
          void Function(GGetBookByAuthorData_getBookByAuthor_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetBookByAuthorData_getBookByAuthor_dataBuilder toBuilder() =>
      new GGetBookByAuthorData_getBookByAuthor_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetBookByAuthorData_getBookByAuthor_data &&
        G__typename == other.G__typename &&
        bookId == other.bookId &&
        bookName == other.bookName &&
        publishedDate == other.publishedDate &&
        description == other.description &&
        price == other.price &&
        genre == other.genre &&
        image == other.image &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        author == other.author;
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
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetBookByAuthorData_getBookByAuthor_data')
          ..add('G__typename', G__typename)
          ..add('bookId', bookId)
          ..add('bookName', bookName)
          ..add('publishedDate', publishedDate)
          ..add('description', description)
          ..add('price', price)
          ..add('genre', genre)
          ..add('image', image)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('author', author))
        .toString();
  }
}

class GGetBookByAuthorData_getBookByAuthor_dataBuilder
    implements
        Builder<GGetBookByAuthorData_getBookByAuthor_data,
            GGetBookByAuthorData_getBookByAuthor_dataBuilder> {
  _$GGetBookByAuthorData_getBookByAuthor_data? _$v;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  GGetBookByAuthorData_getBookByAuthor_data_authorBuilder? _author;
  GGetBookByAuthorData_getBookByAuthor_data_authorBuilder get author =>
      _$this._author ??=
          new GGetBookByAuthorData_getBookByAuthor_data_authorBuilder();
  set author(GGetBookByAuthorData_getBookByAuthor_data_authorBuilder? author) =>
      _$this._author = author;

  GGetBookByAuthorData_getBookByAuthor_dataBuilder() {
    GGetBookByAuthorData_getBookByAuthor_data._initializeBuilder(this);
  }

  GGetBookByAuthorData_getBookByAuthor_dataBuilder get _$this {
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
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _author = $v.author.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetBookByAuthorData_getBookByAuthor_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetBookByAuthorData_getBookByAuthor_data;
  }

  @override
  void update(
      void Function(GGetBookByAuthorData_getBookByAuthor_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetBookByAuthorData_getBookByAuthor_data build() => _build();

  _$GGetBookByAuthorData_getBookByAuthor_data _build() {
    _$GGetBookByAuthorData_getBookByAuthor_data _$result;
    try {
      _$result = _$v ??
          new _$GGetBookByAuthorData_getBookByAuthor_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetBookByAuthorData_getBookByAuthor_data', 'G__typename'),
              bookId: BuiltValueNullFieldError.checkNotNull(
                  bookId, r'GGetBookByAuthorData_getBookByAuthor_data', 'bookId'),
              bookName: BuiltValueNullFieldError.checkNotNull(
                  bookName, r'GGetBookByAuthorData_getBookByAuthor_data', 'bookName'),
              publishedDate: BuiltValueNullFieldError.checkNotNull(
                  publishedDate, r'GGetBookByAuthorData_getBookByAuthor_data', 'publishedDate'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GGetBookByAuthorData_getBookByAuthor_data', 'description'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'GGetBookByAuthorData_getBookByAuthor_data', 'price'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, r'GGetBookByAuthorData_getBookByAuthor_data', 'genre'),
              image: BuiltValueNullFieldError.checkNotNull(image, r'GGetBookByAuthorData_getBookByAuthor_data', 'image'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GGetBookByAuthorData_getBookByAuthor_data', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GGetBookByAuthorData_getBookByAuthor_data', 'updatedAt'),
              author: author.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetBookByAuthorData_getBookByAuthor_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetBookByAuthorData_getBookByAuthor_data_author
    extends GGetBookByAuthorData_getBookByAuthor_data_author {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? authorId;
  @override
  final String? authorImage;
  @override
  final String? email;

  factory _$GGetBookByAuthorData_getBookByAuthor_data_author(
          [void Function(
                  GGetBookByAuthorData_getBookByAuthor_data_authorBuilder)?
              updates]) =>
      (new GGetBookByAuthorData_getBookByAuthor_data_authorBuilder()
            ..update(updates))
          ._build();

  _$GGetBookByAuthorData_getBookByAuthor_data_author._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.authorId,
      this.authorImage,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GGetBookByAuthorData_getBookByAuthor_data_author', 'G__typename');
  }

  @override
  GGetBookByAuthorData_getBookByAuthor_data_author rebuild(
          void Function(GGetBookByAuthorData_getBookByAuthor_data_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetBookByAuthorData_getBookByAuthor_data_authorBuilder toBuilder() =>
      new GGetBookByAuthorData_getBookByAuthor_data_authorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetBookByAuthorData_getBookByAuthor_data_author &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        authorId == other.authorId &&
        authorImage == other.authorImage &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, authorId.hashCode);
    _$hash = $jc(_$hash, authorImage.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GGetBookByAuthorData_getBookByAuthor_data_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('authorId', authorId)
          ..add('authorImage', authorImage)
          ..add('email', email))
        .toString();
  }
}

class GGetBookByAuthorData_getBookByAuthor_data_authorBuilder
    implements
        Builder<GGetBookByAuthorData_getBookByAuthor_data_author,
            GGetBookByAuthorData_getBookByAuthor_data_authorBuilder> {
  _$GGetBookByAuthorData_getBookByAuthor_data_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _authorId;
  String? get authorId => _$this._authorId;
  set authorId(String? authorId) => _$this._authorId = authorId;

  String? _authorImage;
  String? get authorImage => _$this._authorImage;
  set authorImage(String? authorImage) => _$this._authorImage = authorImage;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GGetBookByAuthorData_getBookByAuthor_data_authorBuilder() {
    GGetBookByAuthorData_getBookByAuthor_data_author._initializeBuilder(this);
  }

  GGetBookByAuthorData_getBookByAuthor_data_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _authorId = $v.authorId;
      _authorImage = $v.authorImage;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetBookByAuthorData_getBookByAuthor_data_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetBookByAuthorData_getBookByAuthor_data_author;
  }

  @override
  void update(
      void Function(GGetBookByAuthorData_getBookByAuthor_data_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetBookByAuthorData_getBookByAuthor_data_author build() => _build();

  _$GGetBookByAuthorData_getBookByAuthor_data_author _build() {
    final _$result = _$v ??
        new _$GGetBookByAuthorData_getBookByAuthor_data_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GGetBookByAuthorData_getBookByAuthor_data_author',
                'G__typename'),
            firstName: firstName,
            lastName: lastName,
            authorId: authorId,
            authorImage: authorImage,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
