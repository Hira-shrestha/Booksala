// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_book.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateBookData> _$gCreateBookDataSerializer =
    new _$GCreateBookDataSerializer();
Serializer<GCreateBookData_createBook> _$gCreateBookDataCreateBookSerializer =
    new _$GCreateBookData_createBookSerializer();
Serializer<GCreateBookData_createBook_data>
    _$gCreateBookDataCreateBookDataSerializer =
    new _$GCreateBookData_createBook_dataSerializer();
Serializer<GCreateBookData_createBook_data_author>
    _$gCreateBookDataCreateBookDataAuthorSerializer =
    new _$GCreateBookData_createBook_data_authorSerializer();

class _$GCreateBookDataSerializer
    implements StructuredSerializer<GCreateBookData> {
  @override
  final Iterable<Type> types = const [GCreateBookData, _$GCreateBookData];
  @override
  final String wireName = 'GCreateBookData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateBookData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createBook',
      serializers.serialize(object.createBook,
          specifiedType: const FullType(GCreateBookData_createBook)),
    ];

    return result;
  }

  @override
  GCreateBookData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBookDataBuilder();

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
        case 'createBook':
          result.createBook.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreateBookData_createBook))!
              as GCreateBookData_createBook);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBookData_createBookSerializer
    implements StructuredSerializer<GCreateBookData_createBook> {
  @override
  final Iterable<Type> types = const [
    GCreateBookData_createBook,
    _$GCreateBookData_createBook
  ];
  @override
  final String wireName = 'GCreateBookData_createBook';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateBookData_createBook object,
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
          specifiedType: const FullType(GCreateBookData_createBook_data)),
    ];

    return result;
  }

  @override
  GCreateBookData_createBook deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBookData_createBookBuilder();

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
                      const FullType(GCreateBookData_createBook_data))!
              as GCreateBookData_createBook_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBookData_createBook_dataSerializer
    implements StructuredSerializer<GCreateBookData_createBook_data> {
  @override
  final Iterable<Type> types = const [
    GCreateBookData_createBook_data,
    _$GCreateBookData_createBook_data
  ];
  @override
  final String wireName = 'GCreateBookData_createBook_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateBookData_createBook_data object,
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
              const FullType(GCreateBookData_createBook_data_author)),
    ];

    return result;
  }

  @override
  GCreateBookData_createBook_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBookData_createBook_dataBuilder();

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
                  specifiedType:
                      const FullType(GCreateBookData_createBook_data_author))!
              as GCreateBookData_createBook_data_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBookData_createBook_data_authorSerializer
    implements StructuredSerializer<GCreateBookData_createBook_data_author> {
  @override
  final Iterable<Type> types = const [
    GCreateBookData_createBook_data_author,
    _$GCreateBookData_createBook_data_author
  ];
  @override
  final String wireName = 'GCreateBookData_createBook_data_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateBookData_createBook_data_author object,
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
  GCreateBookData_createBook_data_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBookData_createBook_data_authorBuilder();

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

class _$GCreateBookData extends GCreateBookData {
  @override
  final String G__typename;
  @override
  final GCreateBookData_createBook createBook;

  factory _$GCreateBookData([void Function(GCreateBookDataBuilder)? updates]) =>
      (new GCreateBookDataBuilder()..update(updates))._build();

  _$GCreateBookData._({required this.G__typename, required this.createBook})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateBookData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createBook, r'GCreateBookData', 'createBook');
  }

  @override
  GCreateBookData rebuild(void Function(GCreateBookDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBookDataBuilder toBuilder() =>
      new GCreateBookDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBookData &&
        G__typename == other.G__typename &&
        createBook == other.createBook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createBook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateBookData')
          ..add('G__typename', G__typename)
          ..add('createBook', createBook))
        .toString();
  }
}

class GCreateBookDataBuilder
    implements Builder<GCreateBookData, GCreateBookDataBuilder> {
  _$GCreateBookData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateBookData_createBookBuilder? _createBook;
  GCreateBookData_createBookBuilder get createBook =>
      _$this._createBook ??= new GCreateBookData_createBookBuilder();
  set createBook(GCreateBookData_createBookBuilder? createBook) =>
      _$this._createBook = createBook;

  GCreateBookDataBuilder() {
    GCreateBookData._initializeBuilder(this);
  }

  GCreateBookDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createBook = $v.createBook.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBookData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBookData;
  }

  @override
  void update(void Function(GCreateBookDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBookData build() => _build();

  _$GCreateBookData _build() {
    _$GCreateBookData _$result;
    try {
      _$result = _$v ??
          new _$GCreateBookData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateBookData', 'G__typename'),
              createBook: createBook.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createBook';
        createBook.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateBookData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateBookData_createBook extends GCreateBookData_createBook {
  @override
  final String G__typename;
  @override
  final double status;
  @override
  final String message;
  @override
  final GCreateBookData_createBook_data data;

  factory _$GCreateBookData_createBook(
          [void Function(GCreateBookData_createBookBuilder)? updates]) =>
      (new GCreateBookData_createBookBuilder()..update(updates))._build();

  _$GCreateBookData_createBook._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateBookData_createBook', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GCreateBookData_createBook', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GCreateBookData_createBook', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GCreateBookData_createBook', 'data');
  }

  @override
  GCreateBookData_createBook rebuild(
          void Function(GCreateBookData_createBookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBookData_createBookBuilder toBuilder() =>
      new GCreateBookData_createBookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBookData_createBook &&
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
    return (newBuiltValueToStringHelper(r'GCreateBookData_createBook')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GCreateBookData_createBookBuilder
    implements
        Builder<GCreateBookData_createBook, GCreateBookData_createBookBuilder> {
  _$GCreateBookData_createBook? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GCreateBookData_createBook_dataBuilder? _data;
  GCreateBookData_createBook_dataBuilder get data =>
      _$this._data ??= new GCreateBookData_createBook_dataBuilder();
  set data(GCreateBookData_createBook_dataBuilder? data) => _$this._data = data;

  GCreateBookData_createBookBuilder() {
    GCreateBookData_createBook._initializeBuilder(this);
  }

  GCreateBookData_createBookBuilder get _$this {
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
  void replace(GCreateBookData_createBook other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBookData_createBook;
  }

  @override
  void update(void Function(GCreateBookData_createBookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBookData_createBook build() => _build();

  _$GCreateBookData_createBook _build() {
    _$GCreateBookData_createBook _$result;
    try {
      _$result = _$v ??
          new _$GCreateBookData_createBook._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateBookData_createBook', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GCreateBookData_createBook', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GCreateBookData_createBook', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateBookData_createBook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateBookData_createBook_data
    extends GCreateBookData_createBook_data {
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
  final GCreateBookData_createBook_data_author author;

  factory _$GCreateBookData_createBook_data(
          [void Function(GCreateBookData_createBook_dataBuilder)? updates]) =>
      (new GCreateBookData_createBook_dataBuilder()..update(updates))._build();

  _$GCreateBookData_createBook_data._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateBookData_createBook_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'GCreateBookData_createBook_data', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GCreateBookData_createBook_data', 'bookName');
    BuiltValueNullFieldError.checkNotNull(
        publishedDate, r'GCreateBookData_createBook_data', 'publishedDate');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GCreateBookData_createBook_data', 'description');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GCreateBookData_createBook_data', 'price');
    BuiltValueNullFieldError.checkNotNull(
        genre, r'GCreateBookData_createBook_data', 'genre');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GCreateBookData_createBook_data', 'image');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GCreateBookData_createBook_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GCreateBookData_createBook_data', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        author, r'GCreateBookData_createBook_data', 'author');
  }

  @override
  GCreateBookData_createBook_data rebuild(
          void Function(GCreateBookData_createBook_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBookData_createBook_dataBuilder toBuilder() =>
      new GCreateBookData_createBook_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBookData_createBook_data &&
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
    return (newBuiltValueToStringHelper(r'GCreateBookData_createBook_data')
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

class GCreateBookData_createBook_dataBuilder
    implements
        Builder<GCreateBookData_createBook_data,
            GCreateBookData_createBook_dataBuilder> {
  _$GCreateBookData_createBook_data? _$v;

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

  GCreateBookData_createBook_data_authorBuilder? _author;
  GCreateBookData_createBook_data_authorBuilder get author =>
      _$this._author ??= new GCreateBookData_createBook_data_authorBuilder();
  set author(GCreateBookData_createBook_data_authorBuilder? author) =>
      _$this._author = author;

  GCreateBookData_createBook_dataBuilder() {
    GCreateBookData_createBook_data._initializeBuilder(this);
  }

  GCreateBookData_createBook_dataBuilder get _$this {
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
  void replace(GCreateBookData_createBook_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBookData_createBook_data;
  }

  @override
  void update(void Function(GCreateBookData_createBook_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBookData_createBook_data build() => _build();

  _$GCreateBookData_createBook_data _build() {
    _$GCreateBookData_createBook_data _$result;
    try {
      _$result = _$v ??
          new _$GCreateBookData_createBook_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateBookData_createBook_data', 'G__typename'),
              bookId: BuiltValueNullFieldError.checkNotNull(
                  bookId, r'GCreateBookData_createBook_data', 'bookId'),
              bookName: BuiltValueNullFieldError.checkNotNull(
                  bookName, r'GCreateBookData_createBook_data', 'bookName'),
              publishedDate: BuiltValueNullFieldError.checkNotNull(
                  publishedDate,
                  r'GCreateBookData_createBook_data',
                  'publishedDate'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GCreateBookData_createBook_data', 'description'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'GCreateBookData_createBook_data', 'price'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, r'GCreateBookData_createBook_data', 'genre'),
              image: BuiltValueNullFieldError.checkNotNull(image, r'GCreateBookData_createBook_data', 'image'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GCreateBookData_createBook_data', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GCreateBookData_createBook_data', 'updatedAt'),
              author: author.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateBookData_createBook_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateBookData_createBook_data_author
    extends GCreateBookData_createBook_data_author {
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

  factory _$GCreateBookData_createBook_data_author(
          [void Function(GCreateBookData_createBook_data_authorBuilder)?
              updates]) =>
      (new GCreateBookData_createBook_data_authorBuilder()..update(updates))
          ._build();

  _$GCreateBookData_createBook_data_author._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.authorId,
      this.authorImage,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateBookData_createBook_data_author', 'G__typename');
  }

  @override
  GCreateBookData_createBook_data_author rebuild(
          void Function(GCreateBookData_createBook_data_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBookData_createBook_data_authorBuilder toBuilder() =>
      new GCreateBookData_createBook_data_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBookData_createBook_data_author &&
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
            r'GCreateBookData_createBook_data_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('authorId', authorId)
          ..add('authorImage', authorImage)
          ..add('email', email))
        .toString();
  }
}

class GCreateBookData_createBook_data_authorBuilder
    implements
        Builder<GCreateBookData_createBook_data_author,
            GCreateBookData_createBook_data_authorBuilder> {
  _$GCreateBookData_createBook_data_author? _$v;

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

  GCreateBookData_createBook_data_authorBuilder() {
    GCreateBookData_createBook_data_author._initializeBuilder(this);
  }

  GCreateBookData_createBook_data_authorBuilder get _$this {
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
  void replace(GCreateBookData_createBook_data_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBookData_createBook_data_author;
  }

  @override
  void update(
      void Function(GCreateBookData_createBook_data_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBookData_createBook_data_author build() => _build();

  _$GCreateBookData_createBook_data_author _build() {
    final _$result = _$v ??
        new _$GCreateBookData_createBook_data_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCreateBookData_createBook_data_author', 'G__typename'),
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
