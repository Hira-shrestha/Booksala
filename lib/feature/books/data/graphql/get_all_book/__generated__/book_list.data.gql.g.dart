// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GBooksData> _$gBooksDataSerializer = new _$GBooksDataSerializer();
Serializer<GBooksData_books> _$gBooksDataBooksSerializer =
    new _$GBooksData_booksSerializer();
Serializer<GBooksData_books_data> _$gBooksDataBooksDataSerializer =
    new _$GBooksData_books_dataSerializer();
Serializer<GBooksData_books_data_author> _$gBooksDataBooksDataAuthorSerializer =
    new _$GBooksData_books_data_authorSerializer();

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
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(GBooksData_books_data_author)),
      'bookId',
      serializers.serialize(object.bookId,
          specifiedType: const FullType(String)),
      'bookName',
      serializers.serialize(object.bookName,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'genre',
      serializers.serialize(object.genre,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'publishedDate',
      serializers.serialize(object.publishedDate,
          specifiedType: const FullType(String)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
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
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GBooksData_books_data_author))!
              as GBooksData_books_data_author);
          break;
        case 'bookId':
          result.bookId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'bookName':
          result.bookName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'publishedDate':
          result.publishedDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$GBooksData_books_data_authorSerializer
    implements StructuredSerializer<GBooksData_books_data_author> {
  @override
  final Iterable<Type> types = const [
    GBooksData_books_data_author,
    _$GBooksData_books_data_author
  ];
  @override
  final String wireName = 'GBooksData_books_data_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBooksData_books_data_author object,
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
  GBooksData_books_data_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBooksData_books_data_authorBuilder();

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
  final GBooksData_books_data_author author;
  @override
  final String bookId;
  @override
  final String bookName;
  @override
  final DateTime createdAt;
  @override
  final String description;
  @override
  final String genre;
  @override
  final String image;
  @override
  final double price;
  @override
  final String publishedDate;
  @override
  final DateTime updatedAt;

  factory _$GBooksData_books_data(
          [void Function(GBooksData_books_dataBuilder)? updates]) =>
      (new GBooksData_books_dataBuilder()..update(updates))._build();

  _$GBooksData_books_data._(
      {required this.G__typename,
      required this.author,
      required this.bookId,
      required this.bookName,
      required this.createdAt,
      required this.description,
      required this.genre,
      required this.image,
      required this.price,
      required this.publishedDate,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBooksData_books_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        author, r'GBooksData_books_data', 'author');
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'GBooksData_books_data', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GBooksData_books_data', 'bookName');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GBooksData_books_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GBooksData_books_data', 'description');
    BuiltValueNullFieldError.checkNotNull(
        genre, r'GBooksData_books_data', 'genre');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GBooksData_books_data', 'image');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GBooksData_books_data', 'price');
    BuiltValueNullFieldError.checkNotNull(
        publishedDate, r'GBooksData_books_data', 'publishedDate');
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
        author == other.author &&
        bookId == other.bookId &&
        bookName == other.bookName &&
        createdAt == other.createdAt &&
        description == other.description &&
        genre == other.genre &&
        image == other.image &&
        price == other.price &&
        publishedDate == other.publishedDate &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, bookId.hashCode);
    _$hash = $jc(_$hash, bookName.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, publishedDate.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBooksData_books_data')
          ..add('G__typename', G__typename)
          ..add('author', author)
          ..add('bookId', bookId)
          ..add('bookName', bookName)
          ..add('createdAt', createdAt)
          ..add('description', description)
          ..add('genre', genre)
          ..add('image', image)
          ..add('price', price)
          ..add('publishedDate', publishedDate)
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

  GBooksData_books_data_authorBuilder? _author;
  GBooksData_books_data_authorBuilder get author =>
      _$this._author ??= new GBooksData_books_data_authorBuilder();
  set author(GBooksData_books_data_authorBuilder? author) =>
      _$this._author = author;

  String? _bookId;
  String? get bookId => _$this._bookId;
  set bookId(String? bookId) => _$this._bookId = bookId;

  String? _bookName;
  String? get bookName => _$this._bookName;
  set bookName(String? bookName) => _$this._bookName = bookName;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _publishedDate;
  String? get publishedDate => _$this._publishedDate;
  set publishedDate(String? publishedDate) =>
      _$this._publishedDate = publishedDate;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  GBooksData_books_dataBuilder() {
    GBooksData_books_data._initializeBuilder(this);
  }

  GBooksData_books_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _author = $v.author.toBuilder();
      _bookId = $v.bookId;
      _bookName = $v.bookName;
      _createdAt = $v.createdAt;
      _description = $v.description;
      _genre = $v.genre;
      _image = $v.image;
      _price = $v.price;
      _publishedDate = $v.publishedDate;
      _updatedAt = $v.updatedAt;
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
              author: author.build(),
              bookId: BuiltValueNullFieldError.checkNotNull(
                  bookId, r'GBooksData_books_data', 'bookId'),
              bookName: BuiltValueNullFieldError.checkNotNull(
                  bookName, r'GBooksData_books_data', 'bookName'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GBooksData_books_data', 'createdAt'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GBooksData_books_data', 'description'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, r'GBooksData_books_data', 'genre'),
              image: BuiltValueNullFieldError.checkNotNull(
                  image, r'GBooksData_books_data', 'image'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'GBooksData_books_data', 'price'),
              publishedDate: BuiltValueNullFieldError.checkNotNull(publishedDate, r'GBooksData_books_data', 'publishedDate'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GBooksData_books_data', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
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

class _$GBooksData_books_data_author extends GBooksData_books_data_author {
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

  factory _$GBooksData_books_data_author(
          [void Function(GBooksData_books_data_authorBuilder)? updates]) =>
      (new GBooksData_books_data_authorBuilder()..update(updates))._build();

  _$GBooksData_books_data_author._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.authorId,
      this.authorImage,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GBooksData_books_data_author', 'G__typename');
  }

  @override
  GBooksData_books_data_author rebuild(
          void Function(GBooksData_books_data_authorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBooksData_books_data_authorBuilder toBuilder() =>
      new GBooksData_books_data_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBooksData_books_data_author &&
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
    return (newBuiltValueToStringHelper(r'GBooksData_books_data_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('authorId', authorId)
          ..add('authorImage', authorImage)
          ..add('email', email))
        .toString();
  }
}

class GBooksData_books_data_authorBuilder
    implements
        Builder<GBooksData_books_data_author,
            GBooksData_books_data_authorBuilder> {
  _$GBooksData_books_data_author? _$v;

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

  GBooksData_books_data_authorBuilder() {
    GBooksData_books_data_author._initializeBuilder(this);
  }

  GBooksData_books_data_authorBuilder get _$this {
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
  void replace(GBooksData_books_data_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBooksData_books_data_author;
  }

  @override
  void update(void Function(GBooksData_books_data_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBooksData_books_data_author build() => _build();

  _$GBooksData_books_data_author _build() {
    final _$result = _$v ??
        new _$GBooksData_books_data_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GBooksData_books_data_author', 'G__typename'),
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
