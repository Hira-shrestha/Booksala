// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_book.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateBookData> _$gUpdateBookDataSerializer =
    new _$GUpdateBookDataSerializer();
Serializer<GUpdateBookData_updateBook> _$gUpdateBookDataUpdateBookSerializer =
    new _$GUpdateBookData_updateBookSerializer();
Serializer<GUpdateBookData_updateBook_data>
    _$gUpdateBookDataUpdateBookDataSerializer =
    new _$GUpdateBookData_updateBook_dataSerializer();
Serializer<GUpdateBookData_updateBook_data_author>
    _$gUpdateBookDataUpdateBookDataAuthorSerializer =
    new _$GUpdateBookData_updateBook_data_authorSerializer();

class _$GUpdateBookDataSerializer
    implements StructuredSerializer<GUpdateBookData> {
  @override
  final Iterable<Type> types = const [GUpdateBookData, _$GUpdateBookData];
  @override
  final String wireName = 'GUpdateBookData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateBookData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateBook',
      serializers.serialize(object.updateBook,
          specifiedType: const FullType(GUpdateBookData_updateBook)),
    ];

    return result;
  }

  @override
  GUpdateBookData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateBookDataBuilder();

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
        case 'updateBook':
          result.updateBook.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdateBookData_updateBook))!
              as GUpdateBookData_updateBook);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateBookData_updateBookSerializer
    implements StructuredSerializer<GUpdateBookData_updateBook> {
  @override
  final Iterable<Type> types = const [
    GUpdateBookData_updateBook,
    _$GUpdateBookData_updateBook
  ];
  @override
  final String wireName = 'GUpdateBookData_updateBook';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateBookData_updateBook object,
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
          specifiedType: const FullType(GUpdateBookData_updateBook_data)),
    ];

    return result;
  }

  @override
  GUpdateBookData_updateBook deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateBookData_updateBookBuilder();

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
                      const FullType(GUpdateBookData_updateBook_data))!
              as GUpdateBookData_updateBook_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateBookData_updateBook_dataSerializer
    implements StructuredSerializer<GUpdateBookData_updateBook_data> {
  @override
  final Iterable<Type> types = const [
    GUpdateBookData_updateBook_data,
    _$GUpdateBookData_updateBook_data
  ];
  @override
  final String wireName = 'GUpdateBookData_updateBook_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateBookData_updateBook_data object,
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
              const FullType(GUpdateBookData_updateBook_data_author)),
    ];

    return result;
  }

  @override
  GUpdateBookData_updateBook_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateBookData_updateBook_dataBuilder();

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
                      const FullType(GUpdateBookData_updateBook_data_author))!
              as GUpdateBookData_updateBook_data_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateBookData_updateBook_data_authorSerializer
    implements StructuredSerializer<GUpdateBookData_updateBook_data_author> {
  @override
  final Iterable<Type> types = const [
    GUpdateBookData_updateBook_data_author,
    _$GUpdateBookData_updateBook_data_author
  ];
  @override
  final String wireName = 'GUpdateBookData_updateBook_data_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateBookData_updateBook_data_author object,
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
  GUpdateBookData_updateBook_data_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateBookData_updateBook_data_authorBuilder();

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

class _$GUpdateBookData extends GUpdateBookData {
  @override
  final String G__typename;
  @override
  final GUpdateBookData_updateBook updateBook;

  factory _$GUpdateBookData([void Function(GUpdateBookDataBuilder)? updates]) =>
      (new GUpdateBookDataBuilder()..update(updates))._build();

  _$GUpdateBookData._({required this.G__typename, required this.updateBook})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateBookData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateBook, r'GUpdateBookData', 'updateBook');
  }

  @override
  GUpdateBookData rebuild(void Function(GUpdateBookDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateBookDataBuilder toBuilder() =>
      new GUpdateBookDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateBookData &&
        G__typename == other.G__typename &&
        updateBook == other.updateBook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateBook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateBookData')
          ..add('G__typename', G__typename)
          ..add('updateBook', updateBook))
        .toString();
  }
}

class GUpdateBookDataBuilder
    implements Builder<GUpdateBookData, GUpdateBookDataBuilder> {
  _$GUpdateBookData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateBookData_updateBookBuilder? _updateBook;
  GUpdateBookData_updateBookBuilder get updateBook =>
      _$this._updateBook ??= new GUpdateBookData_updateBookBuilder();
  set updateBook(GUpdateBookData_updateBookBuilder? updateBook) =>
      _$this._updateBook = updateBook;

  GUpdateBookDataBuilder() {
    GUpdateBookData._initializeBuilder(this);
  }

  GUpdateBookDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateBook = $v.updateBook.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateBookData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateBookData;
  }

  @override
  void update(void Function(GUpdateBookDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateBookData build() => _build();

  _$GUpdateBookData _build() {
    _$GUpdateBookData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateBookData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateBookData', 'G__typename'),
              updateBook: updateBook.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateBook';
        updateBook.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateBookData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateBookData_updateBook extends GUpdateBookData_updateBook {
  @override
  final String G__typename;
  @override
  final double status;
  @override
  final String message;
  @override
  final GUpdateBookData_updateBook_data data;

  factory _$GUpdateBookData_updateBook(
          [void Function(GUpdateBookData_updateBookBuilder)? updates]) =>
      (new GUpdateBookData_updateBookBuilder()..update(updates))._build();

  _$GUpdateBookData_updateBook._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateBookData_updateBook', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GUpdateBookData_updateBook', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GUpdateBookData_updateBook', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GUpdateBookData_updateBook', 'data');
  }

  @override
  GUpdateBookData_updateBook rebuild(
          void Function(GUpdateBookData_updateBookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateBookData_updateBookBuilder toBuilder() =>
      new GUpdateBookData_updateBookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateBookData_updateBook &&
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
    return (newBuiltValueToStringHelper(r'GUpdateBookData_updateBook')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GUpdateBookData_updateBookBuilder
    implements
        Builder<GUpdateBookData_updateBook, GUpdateBookData_updateBookBuilder> {
  _$GUpdateBookData_updateBook? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GUpdateBookData_updateBook_dataBuilder? _data;
  GUpdateBookData_updateBook_dataBuilder get data =>
      _$this._data ??= new GUpdateBookData_updateBook_dataBuilder();
  set data(GUpdateBookData_updateBook_dataBuilder? data) => _$this._data = data;

  GUpdateBookData_updateBookBuilder() {
    GUpdateBookData_updateBook._initializeBuilder(this);
  }

  GUpdateBookData_updateBookBuilder get _$this {
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
  void replace(GUpdateBookData_updateBook other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateBookData_updateBook;
  }

  @override
  void update(void Function(GUpdateBookData_updateBookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateBookData_updateBook build() => _build();

  _$GUpdateBookData_updateBook _build() {
    _$GUpdateBookData_updateBook _$result;
    try {
      _$result = _$v ??
          new _$GUpdateBookData_updateBook._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateBookData_updateBook', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GUpdateBookData_updateBook', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GUpdateBookData_updateBook', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateBookData_updateBook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateBookData_updateBook_data
    extends GUpdateBookData_updateBook_data {
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
  final GUpdateBookData_updateBook_data_author author;

  factory _$GUpdateBookData_updateBook_data(
          [void Function(GUpdateBookData_updateBook_dataBuilder)? updates]) =>
      (new GUpdateBookData_updateBook_dataBuilder()..update(updates))._build();

  _$GUpdateBookData_updateBook_data._(
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
        G__typename, r'GUpdateBookData_updateBook_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'GUpdateBookData_updateBook_data', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GUpdateBookData_updateBook_data', 'bookName');
    BuiltValueNullFieldError.checkNotNull(
        publishedDate, r'GUpdateBookData_updateBook_data', 'publishedDate');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GUpdateBookData_updateBook_data', 'description');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GUpdateBookData_updateBook_data', 'price');
    BuiltValueNullFieldError.checkNotNull(
        genre, r'GUpdateBookData_updateBook_data', 'genre');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GUpdateBookData_updateBook_data', 'image');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GUpdateBookData_updateBook_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GUpdateBookData_updateBook_data', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        author, r'GUpdateBookData_updateBook_data', 'author');
  }

  @override
  GUpdateBookData_updateBook_data rebuild(
          void Function(GUpdateBookData_updateBook_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateBookData_updateBook_dataBuilder toBuilder() =>
      new GUpdateBookData_updateBook_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateBookData_updateBook_data &&
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
    return (newBuiltValueToStringHelper(r'GUpdateBookData_updateBook_data')
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

class GUpdateBookData_updateBook_dataBuilder
    implements
        Builder<GUpdateBookData_updateBook_data,
            GUpdateBookData_updateBook_dataBuilder> {
  _$GUpdateBookData_updateBook_data? _$v;

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

  GUpdateBookData_updateBook_data_authorBuilder? _author;
  GUpdateBookData_updateBook_data_authorBuilder get author =>
      _$this._author ??= new GUpdateBookData_updateBook_data_authorBuilder();
  set author(GUpdateBookData_updateBook_data_authorBuilder? author) =>
      _$this._author = author;

  GUpdateBookData_updateBook_dataBuilder() {
    GUpdateBookData_updateBook_data._initializeBuilder(this);
  }

  GUpdateBookData_updateBook_dataBuilder get _$this {
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
  void replace(GUpdateBookData_updateBook_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateBookData_updateBook_data;
  }

  @override
  void update(void Function(GUpdateBookData_updateBook_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateBookData_updateBook_data build() => _build();

  _$GUpdateBookData_updateBook_data _build() {
    _$GUpdateBookData_updateBook_data _$result;
    try {
      _$result = _$v ??
          new _$GUpdateBookData_updateBook_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateBookData_updateBook_data', 'G__typename'),
              bookId: BuiltValueNullFieldError.checkNotNull(
                  bookId, r'GUpdateBookData_updateBook_data', 'bookId'),
              bookName: BuiltValueNullFieldError.checkNotNull(
                  bookName, r'GUpdateBookData_updateBook_data', 'bookName'),
              publishedDate: BuiltValueNullFieldError.checkNotNull(
                  publishedDate,
                  r'GUpdateBookData_updateBook_data',
                  'publishedDate'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GUpdateBookData_updateBook_data', 'description'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'GUpdateBookData_updateBook_data', 'price'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, r'GUpdateBookData_updateBook_data', 'genre'),
              image: BuiltValueNullFieldError.checkNotNull(image, r'GUpdateBookData_updateBook_data', 'image'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GUpdateBookData_updateBook_data', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GUpdateBookData_updateBook_data', 'updatedAt'),
              author: author.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateBookData_updateBook_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateBookData_updateBook_data_author
    extends GUpdateBookData_updateBook_data_author {
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

  factory _$GUpdateBookData_updateBook_data_author(
          [void Function(GUpdateBookData_updateBook_data_authorBuilder)?
              updates]) =>
      (new GUpdateBookData_updateBook_data_authorBuilder()..update(updates))
          ._build();

  _$GUpdateBookData_updateBook_data_author._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.authorId,
      this.authorImage,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateBookData_updateBook_data_author', 'G__typename');
  }

  @override
  GUpdateBookData_updateBook_data_author rebuild(
          void Function(GUpdateBookData_updateBook_data_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateBookData_updateBook_data_authorBuilder toBuilder() =>
      new GUpdateBookData_updateBook_data_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateBookData_updateBook_data_author &&
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
            r'GUpdateBookData_updateBook_data_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('authorId', authorId)
          ..add('authorImage', authorImage)
          ..add('email', email))
        .toString();
  }
}

class GUpdateBookData_updateBook_data_authorBuilder
    implements
        Builder<GUpdateBookData_updateBook_data_author,
            GUpdateBookData_updateBook_data_authorBuilder> {
  _$GUpdateBookData_updateBook_data_author? _$v;

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

  GUpdateBookData_updateBook_data_authorBuilder() {
    GUpdateBookData_updateBook_data_author._initializeBuilder(this);
  }

  GUpdateBookData_updateBook_data_authorBuilder get _$this {
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
  void replace(GUpdateBookData_updateBook_data_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateBookData_updateBook_data_author;
  }

  @override
  void update(
      void Function(GUpdateBookData_updateBook_data_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateBookData_updateBook_data_author build() => _build();

  _$GUpdateBookData_updateBook_data_author _build() {
    final _$result = _$v ??
        new _$GUpdateBookData_updateBook_data_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUpdateBookData_updateBook_data_author', 'G__typename'),
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
