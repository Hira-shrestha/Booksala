// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_books.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFilterBookData> _$gFilterBookDataSerializer =
    new _$GFilterBookDataSerializer();
Serializer<GFilterBookData_filterBook> _$gFilterBookDataFilterBookSerializer =
    new _$GFilterBookData_filterBookSerializer();
Serializer<GFilterBookData_filterBook_data>
    _$gFilterBookDataFilterBookDataSerializer =
    new _$GFilterBookData_filterBook_dataSerializer();
Serializer<GFilterBookData_filterBook_data_author>
    _$gFilterBookDataFilterBookDataAuthorSerializer =
    new _$GFilterBookData_filterBook_data_authorSerializer();

class _$GFilterBookDataSerializer
    implements StructuredSerializer<GFilterBookData> {
  @override
  final Iterable<Type> types = const [GFilterBookData, _$GFilterBookData];
  @override
  final String wireName = 'GFilterBookData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFilterBookData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'filterBook',
      serializers.serialize(object.filterBook,
          specifiedType: const FullType(GFilterBookData_filterBook)),
    ];

    return result;
  }

  @override
  GFilterBookData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterBookDataBuilder();

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
        case 'filterBook':
          result.filterBook.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFilterBookData_filterBook))!
              as GFilterBookData_filterBook);
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterBookData_filterBookSerializer
    implements StructuredSerializer<GFilterBookData_filterBook> {
  @override
  final Iterable<Type> types = const [
    GFilterBookData_filterBook,
    _$GFilterBookData_filterBook
  ];
  @override
  final String wireName = 'GFilterBookData_filterBook';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFilterBookData_filterBook object,
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
          specifiedType: const FullType(BuiltList,
              const [const FullType(GFilterBookData_filterBook_data)])),
    ];

    return result;
  }

  @override
  GFilterBookData_filterBook deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterBookData_filterBookBuilder();

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
                const FullType(GFilterBookData_filterBook_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterBookData_filterBook_dataSerializer
    implements StructuredSerializer<GFilterBookData_filterBook_data> {
  @override
  final Iterable<Type> types = const [
    GFilterBookData_filterBook_data,
    _$GFilterBookData_filterBook_data
  ];
  @override
  final String wireName = 'GFilterBookData_filterBook_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFilterBookData_filterBook_data object,
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
              const FullType(GFilterBookData_filterBook_data_author)),
    ];

    return result;
  }

  @override
  GFilterBookData_filterBook_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterBookData_filterBook_dataBuilder();

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
                      const FullType(GFilterBookData_filterBook_data_author))!
              as GFilterBookData_filterBook_data_author);
          break;
      }
    }

    return result.build();
  }
}

class _$GFilterBookData_filterBook_data_authorSerializer
    implements StructuredSerializer<GFilterBookData_filterBook_data_author> {
  @override
  final Iterable<Type> types = const [
    GFilterBookData_filterBook_data_author,
    _$GFilterBookData_filterBook_data_author
  ];
  @override
  final String wireName = 'GFilterBookData_filterBook_data_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFilterBookData_filterBook_data_author object,
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
  GFilterBookData_filterBook_data_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFilterBookData_filterBook_data_authorBuilder();

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

class _$GFilterBookData extends GFilterBookData {
  @override
  final String G__typename;
  @override
  final GFilterBookData_filterBook filterBook;

  factory _$GFilterBookData([void Function(GFilterBookDataBuilder)? updates]) =>
      (new GFilterBookDataBuilder()..update(updates))._build();

  _$GFilterBookData._({required this.G__typename, required this.filterBook})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFilterBookData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        filterBook, r'GFilterBookData', 'filterBook');
  }

  @override
  GFilterBookData rebuild(void Function(GFilterBookDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterBookDataBuilder toBuilder() =>
      new GFilterBookDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterBookData &&
        G__typename == other.G__typename &&
        filterBook == other.filterBook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, filterBook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFilterBookData')
          ..add('G__typename', G__typename)
          ..add('filterBook', filterBook))
        .toString();
  }
}

class GFilterBookDataBuilder
    implements Builder<GFilterBookData, GFilterBookDataBuilder> {
  _$GFilterBookData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFilterBookData_filterBookBuilder? _filterBook;
  GFilterBookData_filterBookBuilder get filterBook =>
      _$this._filterBook ??= new GFilterBookData_filterBookBuilder();
  set filterBook(GFilterBookData_filterBookBuilder? filterBook) =>
      _$this._filterBook = filterBook;

  GFilterBookDataBuilder() {
    GFilterBookData._initializeBuilder(this);
  }

  GFilterBookDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _filterBook = $v.filterBook.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFilterBookData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterBookData;
  }

  @override
  void update(void Function(GFilterBookDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterBookData build() => _build();

  _$GFilterBookData _build() {
    _$GFilterBookData _$result;
    try {
      _$result = _$v ??
          new _$GFilterBookData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFilterBookData', 'G__typename'),
              filterBook: filterBook.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filterBook';
        filterBook.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFilterBookData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFilterBookData_filterBook extends GFilterBookData_filterBook {
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
  final BuiltList<GFilterBookData_filterBook_data> data;

  factory _$GFilterBookData_filterBook(
          [void Function(GFilterBookData_filterBookBuilder)? updates]) =>
      (new GFilterBookData_filterBookBuilder()..update(updates))._build();

  _$GFilterBookData_filterBook._(
      {required this.G__typename,
      required this.status,
      required this.message,
      required this.page,
      required this.total,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFilterBookData_filterBook', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GFilterBookData_filterBook', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GFilterBookData_filterBook', 'message');
    BuiltValueNullFieldError.checkNotNull(
        page, r'GFilterBookData_filterBook', 'page');
    BuiltValueNullFieldError.checkNotNull(
        total, r'GFilterBookData_filterBook', 'total');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GFilterBookData_filterBook', 'data');
  }

  @override
  GFilterBookData_filterBook rebuild(
          void Function(GFilterBookData_filterBookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterBookData_filterBookBuilder toBuilder() =>
      new GFilterBookData_filterBookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterBookData_filterBook &&
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
    return (newBuiltValueToStringHelper(r'GFilterBookData_filterBook')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('message', message)
          ..add('page', page)
          ..add('total', total)
          ..add('data', data))
        .toString();
  }
}

class GFilterBookData_filterBookBuilder
    implements
        Builder<GFilterBookData_filterBook, GFilterBookData_filterBookBuilder> {
  _$GFilterBookData_filterBook? _$v;

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

  ListBuilder<GFilterBookData_filterBook_data>? _data;
  ListBuilder<GFilterBookData_filterBook_data> get data =>
      _$this._data ??= new ListBuilder<GFilterBookData_filterBook_data>();
  set data(ListBuilder<GFilterBookData_filterBook_data>? data) =>
      _$this._data = data;

  GFilterBookData_filterBookBuilder() {
    GFilterBookData_filterBook._initializeBuilder(this);
  }

  GFilterBookData_filterBookBuilder get _$this {
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
  void replace(GFilterBookData_filterBook other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterBookData_filterBook;
  }

  @override
  void update(void Function(GFilterBookData_filterBookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterBookData_filterBook build() => _build();

  _$GFilterBookData_filterBook _build() {
    _$GFilterBookData_filterBook _$result;
    try {
      _$result = _$v ??
          new _$GFilterBookData_filterBook._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFilterBookData_filterBook', 'G__typename'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GFilterBookData_filterBook', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GFilterBookData_filterBook', 'message'),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'GFilterBookData_filterBook', 'page'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'GFilterBookData_filterBook', 'total'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFilterBookData_filterBook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFilterBookData_filterBook_data
    extends GFilterBookData_filterBook_data {
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
  final GFilterBookData_filterBook_data_author author;

  factory _$GFilterBookData_filterBook_data(
          [void Function(GFilterBookData_filterBook_dataBuilder)? updates]) =>
      (new GFilterBookData_filterBook_dataBuilder()..update(updates))._build();

  _$GFilterBookData_filterBook_data._(
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
        G__typename, r'GFilterBookData_filterBook_data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        bookId, r'GFilterBookData_filterBook_data', 'bookId');
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GFilterBookData_filterBook_data', 'bookName');
    BuiltValueNullFieldError.checkNotNull(
        publishedDate, r'GFilterBookData_filterBook_data', 'publishedDate');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GFilterBookData_filterBook_data', 'description');
    BuiltValueNullFieldError.checkNotNull(
        price, r'GFilterBookData_filterBook_data', 'price');
    BuiltValueNullFieldError.checkNotNull(
        genre, r'GFilterBookData_filterBook_data', 'genre');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GFilterBookData_filterBook_data', 'image');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GFilterBookData_filterBook_data', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GFilterBookData_filterBook_data', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        author, r'GFilterBookData_filterBook_data', 'author');
  }

  @override
  GFilterBookData_filterBook_data rebuild(
          void Function(GFilterBookData_filterBook_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterBookData_filterBook_dataBuilder toBuilder() =>
      new GFilterBookData_filterBook_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterBookData_filterBook_data &&
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
    return (newBuiltValueToStringHelper(r'GFilterBookData_filterBook_data')
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

class GFilterBookData_filterBook_dataBuilder
    implements
        Builder<GFilterBookData_filterBook_data,
            GFilterBookData_filterBook_dataBuilder> {
  _$GFilterBookData_filterBook_data? _$v;

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

  GFilterBookData_filterBook_data_authorBuilder? _author;
  GFilterBookData_filterBook_data_authorBuilder get author =>
      _$this._author ??= new GFilterBookData_filterBook_data_authorBuilder();
  set author(GFilterBookData_filterBook_data_authorBuilder? author) =>
      _$this._author = author;

  GFilterBookData_filterBook_dataBuilder() {
    GFilterBookData_filterBook_data._initializeBuilder(this);
  }

  GFilterBookData_filterBook_dataBuilder get _$this {
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
  void replace(GFilterBookData_filterBook_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterBookData_filterBook_data;
  }

  @override
  void update(void Function(GFilterBookData_filterBook_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterBookData_filterBook_data build() => _build();

  _$GFilterBookData_filterBook_data _build() {
    _$GFilterBookData_filterBook_data _$result;
    try {
      _$result = _$v ??
          new _$GFilterBookData_filterBook_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GFilterBookData_filterBook_data', 'G__typename'),
              bookId: BuiltValueNullFieldError.checkNotNull(
                  bookId, r'GFilterBookData_filterBook_data', 'bookId'),
              bookName: BuiltValueNullFieldError.checkNotNull(
                  bookName, r'GFilterBookData_filterBook_data', 'bookName'),
              publishedDate: BuiltValueNullFieldError.checkNotNull(
                  publishedDate,
                  r'GFilterBookData_filterBook_data',
                  'publishedDate'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'GFilterBookData_filterBook_data', 'description'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'GFilterBookData_filterBook_data', 'price'),
              genre: BuiltValueNullFieldError.checkNotNull(
                  genre, r'GFilterBookData_filterBook_data', 'genre'),
              image: BuiltValueNullFieldError.checkNotNull(image, r'GFilterBookData_filterBook_data', 'image'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'GFilterBookData_filterBook_data', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'GFilterBookData_filterBook_data', 'updatedAt'),
              author: author.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GFilterBookData_filterBook_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFilterBookData_filterBook_data_author
    extends GFilterBookData_filterBook_data_author {
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

  factory _$GFilterBookData_filterBook_data_author(
          [void Function(GFilterBookData_filterBook_data_authorBuilder)?
              updates]) =>
      (new GFilterBookData_filterBook_data_authorBuilder()..update(updates))
          ._build();

  _$GFilterBookData_filterBook_data_author._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.authorId,
      this.authorImage,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFilterBookData_filterBook_data_author', 'G__typename');
  }

  @override
  GFilterBookData_filterBook_data_author rebuild(
          void Function(GFilterBookData_filterBook_data_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFilterBookData_filterBook_data_authorBuilder toBuilder() =>
      new GFilterBookData_filterBook_data_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFilterBookData_filterBook_data_author &&
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
            r'GFilterBookData_filterBook_data_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('authorId', authorId)
          ..add('authorImage', authorImage)
          ..add('email', email))
        .toString();
  }
}

class GFilterBookData_filterBook_data_authorBuilder
    implements
        Builder<GFilterBookData_filterBook_data_author,
            GFilterBookData_filterBook_data_authorBuilder> {
  _$GFilterBookData_filterBook_data_author? _$v;

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

  GFilterBookData_filterBook_data_authorBuilder() {
    GFilterBookData_filterBook_data_author._initializeBuilder(this);
  }

  GFilterBookData_filterBook_data_authorBuilder get _$this {
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
  void replace(GFilterBookData_filterBook_data_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFilterBookData_filterBook_data_author;
  }

  @override
  void update(
      void Function(GFilterBookData_filterBook_data_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFilterBookData_filterBook_data_author build() => _build();

  _$GFilterBookData_filterBook_data_author _build() {
    final _$result = _$v ??
        new _$GFilterBookData_filterBook_data_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GFilterBookData_filterBook_data_author', 'G__typename'),
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
