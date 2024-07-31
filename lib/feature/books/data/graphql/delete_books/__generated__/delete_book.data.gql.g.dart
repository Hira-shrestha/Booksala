// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_book.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveBookData> _$gRemoveBookDataSerializer =
    new _$GRemoveBookDataSerializer();
Serializer<GRemoveBookData_removeBook> _$gRemoveBookDataRemoveBookSerializer =
    new _$GRemoveBookData_removeBookSerializer();
Serializer<GRemoveBookData_removeBook_data>
    _$gRemoveBookDataRemoveBookDataSerializer =
    new _$GRemoveBookData_removeBook_dataSerializer();
Serializer<GRemoveBookData_removeBook_data_author>
    _$gRemoveBookDataRemoveBookDataAuthorSerializer =
    new _$GRemoveBookData_removeBook_data_authorSerializer();

class _$GRemoveBookDataSerializer
    implements StructuredSerializer<GRemoveBookData> {
  @override
  final Iterable<Type> types = const [GRemoveBookData, _$GRemoveBookData];
  @override
  final String wireName = 'GRemoveBookData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveBookData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeBook',
      serializers.serialize(object.removeBook,
          specifiedType: const FullType(GRemoveBookData_removeBook)),
    ];

    return result;
  }

  @override
  GRemoveBookData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveBookDataBuilder();

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
        case 'removeBook':
          result.removeBook.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRemoveBookData_removeBook))!
              as GRemoveBookData_removeBook);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveBookData_removeBookSerializer
    implements StructuredSerializer<GRemoveBookData_removeBook> {
  @override
  final Iterable<Type> types = const [
    GRemoveBookData_removeBook,
    _$GRemoveBookData_removeBook
  ];
  @override
  final String wireName = 'GRemoveBookData_removeBook';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveBookData_removeBook object,
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
          specifiedType: const FullType(GRemoveBookData_removeBook_data)),
    ];

    return result;
  }

  @override
  GRemoveBookData_removeBook deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveBookData_removeBookBuilder();

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
                      const FullType(GRemoveBookData_removeBook_data))!
              as GRemoveBookData_removeBook_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveBookData_removeBook_dataSerializer
    implements StructuredSerializer<GRemoveBookData_removeBook_data> {
  @override
  final Iterable<Type> types = const [
    GRemoveBookData_removeBook_data,
    _$GRemoveBookData_removeBook_data
  ];
  @override
  final String wireName = 'GRemoveBookData_removeBook_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveBookData_removeBook_data object,
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
              const FullType(GRemoveBookData_removeBook_data_author)),
    ];

    return result;
  }

  @override
  GRemoveBookData_removeBook_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveBookData_removeBook_dataBuilder();

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
                      const FullType(GRemoveBookData_removeBook_data_author))!
              as GRemoveBookData_removeBook_data_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveBookData_removeBook_data_authorSerializer
    implements StructuredSerializer<GRemoveBookData_removeBook_data_author> {
  @override
  final Iterable<Type> types = const [
    GRemoveBookData_removeBook_data_author,
    _$GRemoveBookData_removeBook_data_author
  ];
  @override
  final String wireName = 'GRemoveBookData_removeBook_data_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveBookData_removeBook_data_author object,
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
  GRemoveBookData_removeBook_data_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveBookData_removeBook_data_authorBuilder();

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

class _$GRemoveBookData extends GRemoveBookData {
  @override
  final String G__typename;
  @override
  final GRemoveBookData_removeBook removeBook;

  factory _$GRemoveBookData([void Function(GRemoveBookDataBuilder)? updates]) =>
      (new GRemoveBookDataBuilder()..update(updates))._build();

  _$GRemoveBookData._({required this.G__typename, required this.removeBook})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveBookData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        removeBook, r'GRemoveBookData', 'removeBook');
  }

  @override
  GRemoveBookData rebuild(void Function(GRemoveBookDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveBookDataBuilder toBuilder() =>
      new GRemoveBookDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveBookData &&
        G__typename == other.G__typename &&
        removeBook == other.removeBook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeBook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRemoveBookData')
          ..add('G__typename', G__typename)
          ..add('removeBook', removeBook))
        .toString();
  }
}

class GRemoveBookDataBuilder
    implements Builder<GRemoveBookData, GRemoveBookDataBuilder> {
  _$GRemoveBookData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GRemoveBookData_removeBookBuilder? _removeBook;
  GRemoveBookData_removeBookBuilder get removeBook =>
      _$this._removeBook ??= new GRemoveBookData_removeBookBuilder();
  set removeBook(GRemoveBookData_removeBookBuilder? removeBook) =>
      _$this._removeBook = removeBook;

  GRemoveBookDataBuilder() {
    GRemoveBookData._initializeBuilder(this);
  }

  GRemoveBookDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeBook = $v.removeBook.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveBookData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveBookData;
  }

  @override
  void update(void Function(GRemoveBookDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveBookData build() => _build();

  _$GRemoveBookData _build() {
    _$GRemoveBookData _$result;
    try {
      _$result = _$v ??
          new _$GRemoveBookData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemoveBookData', 'G__typename'),
              removeBook: removeBook.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeBook';
        removeBook.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemoveBookData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveBookData_removeBook extends GRemoveBookData_removeBook {
  @override
  final String G__typename;
  @override
  final double status;
  @override
  final String message;
  @override
  final GRemoveBookData_removeBook_data data;

  factory _$GRemoveBookData_removeBook(
          [void Function(GRemoveBookData_removeBookBuilder)? updates]) =>
      (new GRemoveBookData_removeBookBuilder()..update(updates))._build();

  _$GRemoveBookData_removeBook._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveBookData_removeBook', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GRemoveBookData_removeBook', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GRemoveBookData_removeBook', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GRemoveBookData_removeBook', 'data');
  }

  @override
  GRemoveBookData_removeBook rebuild(
          void Function(GRemoveBookData_removeBookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveBookData_removeBookBuilder toBuilder() =>
      new GRemoveBookData_removeBookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveBookData_removeBook &&
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
    return (newBuiltValueToStringHelper(r'GRemoveBookData_removeBook')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GRemoveBookData_removeBookBuilder
    implements
        Builder<GRemoveBookData_removeBook, GRemoveBookData_removeBookBuilder> {
  _$GRemoveBookData_removeBook? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _status;
  double? get status => _$this._status;
  set status(double? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GRemoveBookData_removeBook_dataBuilder? _data;
  GRemoveBookData_removeBook_dataBuilder get data =>
      _$this._data ??= new GRemoveBookData_removeBook_dataBuilder();
  set data(GRemoveBookData_removeBook_dataBuilder? data) => _$this._data = data;

  GRemoveBookData_removeBookBuilder() {
    GRemoveBookData_removeBook._initializeBuilder(this);
  }

  GRemoveBookData_removeBookBuilder get _$this {
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
  void replace(GRemoveBookData_removeBook other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveBookData_removeBook;
  }

  @override
  void update(void Function(GRemoveBookData_removeBookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveBookData_removeBook build() => _build();

  _$GRemoveBookData_removeBook _build() {
    _$GRemoveBookData_removeBook _$result;
    try {
      _$result = _$v ??
          new _$GRemoveBookData_removeBook._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemoveBookData_removeBook', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GRemoveBookData_removeBook', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GRemoveBookData_removeBook', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemoveBookData_removeBook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveBookData_removeBook_data
    extends GRemoveBookData_removeBook_data {
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
  final GRemoveBookData_removeBook_data_author author;

  factory _$GRemoveBookData_removeBook_data(
          [void Function(GRemoveBookData_removeBook_dataBuilder)? updates]) =>
      (new GRemoveBookData_removeBook_dataBuilder()..update(updates))._build();

  _$GRemoveBookData_removeBook_data._(
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
        G__typename, r'GRemoveBookData_removeBook_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'GRemoveBookData_removeBook_data', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GRemoveBookData_removeBook_data', 'bookName');
    BuiltValueNullFieldError.checkNotNull(
        publishedDate, r'GRemoveBookData_removeBook_data', 'publishedDate');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GRemoveBookData_removeBook_data', 'description');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GRemoveBookData_removeBook_data', 'price');
    BuiltValueNullFieldError.checkNotNull(
        genre, r'GRemoveBookData_removeBook_data', 'genre');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GRemoveBookData_removeBook_data', 'image');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GRemoveBookData_removeBook_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GRemoveBookData_removeBook_data', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        author, r'GRemoveBookData_removeBook_data', 'author');
  }

  @override
  GRemoveBookData_removeBook_data rebuild(
          void Function(GRemoveBookData_removeBook_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveBookData_removeBook_dataBuilder toBuilder() =>
      new GRemoveBookData_removeBook_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveBookData_removeBook_data &&
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
    return (newBuiltValueToStringHelper(r'GRemoveBookData_removeBook_data')
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

class GRemoveBookData_removeBook_dataBuilder
    implements
        Builder<GRemoveBookData_removeBook_data,
            GRemoveBookData_removeBook_dataBuilder> {
  _$GRemoveBookData_removeBook_data? _$v;

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

  GRemoveBookData_removeBook_data_authorBuilder? _author;
  GRemoveBookData_removeBook_data_authorBuilder get author =>
      _$this._author ??= new GRemoveBookData_removeBook_data_authorBuilder();
  set author(GRemoveBookData_removeBook_data_authorBuilder? author) =>
      _$this._author = author;

  GRemoveBookData_removeBook_dataBuilder() {
    GRemoveBookData_removeBook_data._initializeBuilder(this);
  }

  GRemoveBookData_removeBook_dataBuilder get _$this {
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
  void replace(GRemoveBookData_removeBook_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveBookData_removeBook_data;
  }

  @override
  void update(void Function(GRemoveBookData_removeBook_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveBookData_removeBook_data build() => _build();

  _$GRemoveBookData_removeBook_data _build() {
    _$GRemoveBookData_removeBook_data _$result;
    try {
      _$result = _$v ??
          new _$GRemoveBookData_removeBook_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GRemoveBookData_removeBook_data', 'G__typename'),
              bookId: BuiltValueNullFieldError.checkNotNull(
                  bookId, r'GRemoveBookData_removeBook_data', 'bookId'),
              bookName: BuiltValueNullFieldError.checkNotNull(
                  bookName, r'GRemoveBookData_removeBook_data', 'bookName'),
              publishedDate: BuiltValueNullFieldError.checkNotNull(
                  publishedDate,
                  r'GRemoveBookData_removeBook_data',
                  'publishedDate'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GRemoveBookData_removeBook_data', 'description'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'GRemoveBookData_removeBook_data', 'price'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, r'GRemoveBookData_removeBook_data', 'genre'),
              image: BuiltValueNullFieldError.checkNotNull(image, r'GRemoveBookData_removeBook_data', 'image'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GRemoveBookData_removeBook_data', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GRemoveBookData_removeBook_data', 'updatedAt'),
              author: author.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRemoveBookData_removeBook_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRemoveBookData_removeBook_data_author
    extends GRemoveBookData_removeBook_data_author {
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

  factory _$GRemoveBookData_removeBook_data_author(
          [void Function(GRemoveBookData_removeBook_data_authorBuilder)?
              updates]) =>
      (new GRemoveBookData_removeBook_data_authorBuilder()..update(updates))
          ._build();

  _$GRemoveBookData_removeBook_data_author._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.authorId,
      this.authorImage,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GRemoveBookData_removeBook_data_author', 'G__typename');
  }

  @override
  GRemoveBookData_removeBook_data_author rebuild(
          void Function(GRemoveBookData_removeBook_data_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveBookData_removeBook_data_authorBuilder toBuilder() =>
      new GRemoveBookData_removeBook_data_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveBookData_removeBook_data_author &&
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
            r'GRemoveBookData_removeBook_data_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('authorId', authorId)
          ..add('authorImage', authorImage)
          ..add('email', email))
        .toString();
  }
}

class GRemoveBookData_removeBook_data_authorBuilder
    implements
        Builder<GRemoveBookData_removeBook_data_author,
            GRemoveBookData_removeBook_data_authorBuilder> {
  _$GRemoveBookData_removeBook_data_author? _$v;

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

  GRemoveBookData_removeBook_data_authorBuilder() {
    GRemoveBookData_removeBook_data_author._initializeBuilder(this);
  }

  GRemoveBookData_removeBook_data_authorBuilder get _$this {
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
  void replace(GRemoveBookData_removeBook_data_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveBookData_removeBook_data_author;
  }

  @override
  void update(
      void Function(GRemoveBookData_removeBook_data_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRemoveBookData_removeBook_data_author build() => _build();

  _$GRemoveBookData_removeBook_data_author _build() {
    final _$result = _$v ??
        new _$GRemoveBookData_removeBook_data_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GRemoveBookData_removeBook_data_author', 'G__typename'),
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
