// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllBookInput> _$gGetAllBookInputSerializer =
    new _$GGetAllBookInputSerializer();
Serializer<GGetAllSearchBookInput> _$gGetAllSearchBookInputSerializer =
    new _$GGetAllSearchBookInputSerializer();
Serializer<GGetAllFilterBookInput> _$gGetAllFilterBookInputSerializer =
    new _$GGetAllFilterBookInputSerializer();
Serializer<GCreateUserInput> _$gCreateUserInputSerializer =
    new _$GCreateUserInputSerializer();
Serializer<GUpdateUserInput> _$gUpdateUserInputSerializer =
    new _$GUpdateUserInputSerializer();
Serializer<GCreateBookInput> _$gCreateBookInputSerializer =
    new _$GCreateBookInputSerializer();
Serializer<GUpdateBookInput> _$gUpdateBookInputSerializer =
    new _$GUpdateBookInputSerializer();

class _$GGetAllBookInputSerializer
    implements StructuredSerializer<GGetAllBookInput> {
  @override
  final Iterable<Type> types = const [GGetAllBookInput, _$GGetAllBookInput];
  @override
  final String wireName = 'GGetAllBookInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAllBookInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetAllBookInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllBookInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllSearchBookInputSerializer
    implements StructuredSerializer<GGetAllSearchBookInput> {
  @override
  final Iterable<Type> types = const [
    GGetAllSearchBookInput,
    _$GGetAllSearchBookInput
  ];
  @override
  final String wireName = 'GGetAllSearchBookInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllSearchBookInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
      'searchTerm',
      serializers.serialize(object.searchTerm,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetAllSearchBookInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllSearchBookInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'searchTerm':
          result.searchTerm = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllFilterBookInputSerializer
    implements StructuredSerializer<GGetAllFilterBookInput> {
  @override
  final Iterable<Type> types = const [
    GGetAllFilterBookInput,
    _$GGetAllFilterBookInput
  ];
  @override
  final String wireName = 'GGetAllFilterBookInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllFilterBookInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GGetAllFilterBookInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllFilterBookInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateUserInputSerializer
    implements StructuredSerializer<GCreateUserInput> {
  @override
  final Iterable<Type> types = const [GCreateUserInput, _$GCreateUserInput];
  @override
  final String wireName = 'GCreateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserInputSerializer
    implements StructuredSerializer<GUpdateUserInput> {
  @override
  final Iterable<Type> types = const [GUpdateUserInput, _$GUpdateUserInput];
  @override
  final String wireName = 'GUpdateUserInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUserInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateBookInputSerializer
    implements StructuredSerializer<GCreateBookInput> {
  @override
  final Iterable<Type> types = const [GCreateBookInput, _$GCreateBookInput];
  @override
  final String wireName = 'GCreateBookInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateBookInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'genre',
      serializers.serialize(object.genre,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreateBookInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateBookInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateBookInputSerializer
    implements StructuredSerializer<GUpdateBookInput> {
  @override
  final Iterable<Type> types = const [GUpdateBookInput, _$GUpdateBookInput];
  @override
  final String wireName = 'GUpdateBookInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateBookInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.bookName;
    if (value != null) {
      result
        ..add('bookName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publishedDate;
    if (value != null) {
      result
        ..add('publishedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateBookInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateBookInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bookName':
          result.bookName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'publishedDate':
          result.publishedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllBookInput extends GGetAllBookInput {
  @override
  final int page;
  @override
  final int limit;

  factory _$GGetAllBookInput(
          [void Function(GGetAllBookInputBuilder)? updates]) =>
      (new GGetAllBookInputBuilder()..update(updates))._build();

  _$GGetAllBookInput._({required this.page, required this.limit}) : super._() {
    BuiltValueNullFieldError.checkNotNull(page, r'GGetAllBookInput', 'page');
    BuiltValueNullFieldError.checkNotNull(limit, r'GGetAllBookInput', 'limit');
  }

  @override
  GGetAllBookInput rebuild(void Function(GGetAllBookInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllBookInputBuilder toBuilder() =>
      new GGetAllBookInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllBookInput &&
        page == other.page &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllBookInput')
          ..add('page', page)
          ..add('limit', limit))
        .toString();
  }
}

class GGetAllBookInputBuilder
    implements Builder<GGetAllBookInput, GGetAllBookInputBuilder> {
  _$GGetAllBookInput? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GGetAllBookInputBuilder();

  GGetAllBookInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllBookInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllBookInput;
  }

  @override
  void update(void Function(GGetAllBookInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllBookInput build() => _build();

  _$GGetAllBookInput _build() {
    final _$result = _$v ??
        new _$GGetAllBookInput._(
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'GGetAllBookInput', 'page'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'GGetAllBookInput', 'limit'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllSearchBookInput extends GGetAllSearchBookInput {
  @override
  final int page;
  @override
  final int limit;
  @override
  final String searchTerm;

  factory _$GGetAllSearchBookInput(
          [void Function(GGetAllSearchBookInputBuilder)? updates]) =>
      (new GGetAllSearchBookInputBuilder()..update(updates))._build();

  _$GGetAllSearchBookInput._(
      {required this.page, required this.limit, required this.searchTerm})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        page, r'GGetAllSearchBookInput', 'page');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GGetAllSearchBookInput', 'limit');
    BuiltValueNullFieldError.checkNotNull(
        searchTerm, r'GGetAllSearchBookInput', 'searchTerm');
  }

  @override
  GGetAllSearchBookInput rebuild(
          void Function(GGetAllSearchBookInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllSearchBookInputBuilder toBuilder() =>
      new GGetAllSearchBookInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllSearchBookInput &&
        page == other.page &&
        limit == other.limit &&
        searchTerm == other.searchTerm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, searchTerm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllSearchBookInput')
          ..add('page', page)
          ..add('limit', limit)
          ..add('searchTerm', searchTerm))
        .toString();
  }
}

class GGetAllSearchBookInputBuilder
    implements Builder<GGetAllSearchBookInput, GGetAllSearchBookInputBuilder> {
  _$GGetAllSearchBookInput? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _searchTerm;
  String? get searchTerm => _$this._searchTerm;
  set searchTerm(String? searchTerm) => _$this._searchTerm = searchTerm;

  GGetAllSearchBookInputBuilder();

  GGetAllSearchBookInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _limit = $v.limit;
      _searchTerm = $v.searchTerm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllSearchBookInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllSearchBookInput;
  }

  @override
  void update(void Function(GGetAllSearchBookInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllSearchBookInput build() => _build();

  _$GGetAllSearchBookInput _build() {
    final _$result = _$v ??
        new _$GGetAllSearchBookInput._(
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'GGetAllSearchBookInput', 'page'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'GGetAllSearchBookInput', 'limit'),
            searchTerm: BuiltValueNullFieldError.checkNotNull(
                searchTerm, r'GGetAllSearchBookInput', 'searchTerm'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllFilterBookInput extends GGetAllFilterBookInput {
  @override
  final int page;
  @override
  final int limit;
  @override
  final BuiltList<String> genres;

  factory _$GGetAllFilterBookInput(
          [void Function(GGetAllFilterBookInputBuilder)? updates]) =>
      (new GGetAllFilterBookInputBuilder()..update(updates))._build();

  _$GGetAllFilterBookInput._(
      {required this.page, required this.limit, required this.genres})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        page, r'GGetAllFilterBookInput', 'page');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GGetAllFilterBookInput', 'limit');
    BuiltValueNullFieldError.checkNotNull(
        genres, r'GGetAllFilterBookInput', 'genres');
  }

  @override
  GGetAllFilterBookInput rebuild(
          void Function(GGetAllFilterBookInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllFilterBookInputBuilder toBuilder() =>
      new GGetAllFilterBookInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllFilterBookInput &&
        page == other.page &&
        limit == other.limit &&
        genres == other.genres;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetAllFilterBookInput')
          ..add('page', page)
          ..add('limit', limit)
          ..add('genres', genres))
        .toString();
  }
}

class GGetAllFilterBookInputBuilder
    implements Builder<GGetAllFilterBookInput, GGetAllFilterBookInputBuilder> {
  _$GGetAllFilterBookInput? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  ListBuilder<String>? _genres;
  ListBuilder<String> get genres =>
      _$this._genres ??= new ListBuilder<String>();
  set genres(ListBuilder<String>? genres) => _$this._genres = genres;

  GGetAllFilterBookInputBuilder();

  GGetAllFilterBookInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _limit = $v.limit;
      _genres = $v.genres.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllFilterBookInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllFilterBookInput;
  }

  @override
  void update(void Function(GGetAllFilterBookInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetAllFilterBookInput build() => _build();

  _$GGetAllFilterBookInput _build() {
    _$GGetAllFilterBookInput _$result;
    try {
      _$result = _$v ??
          new _$GGetAllFilterBookInput._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'GGetAllFilterBookInput', 'page'),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'GGetAllFilterBookInput', 'limit'),
              genres: genres.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetAllFilterBookInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateUserInput extends GCreateUserInput {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String image;
  @override
  final String password;

  factory _$GCreateUserInput(
          [void Function(GCreateUserInputBuilder)? updates]) =>
      (new GCreateUserInputBuilder()..update(updates))._build();

  _$GCreateUserInput._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.image,
      required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GCreateUserInput', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GCreateUserInput', 'lastName');
    BuiltValueNullFieldError.checkNotNull(email, r'GCreateUserInput', 'email');
    BuiltValueNullFieldError.checkNotNull(image, r'GCreateUserInput', 'image');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GCreateUserInput', 'password');
  }

  @override
  GCreateUserInput rebuild(void Function(GCreateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateUserInputBuilder toBuilder() =>
      new GCreateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateUserInput &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        image == other.image &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateUserInput')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('image', image)
          ..add('password', password))
        .toString();
  }
}

class GCreateUserInputBuilder
    implements Builder<GCreateUserInput, GCreateUserInputBuilder> {
  _$GCreateUserInput? _$v;

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

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GCreateUserInputBuilder();

  GCreateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _image = $v.image;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateUserInput;
  }

  @override
  void update(void Function(GCreateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateUserInput build() => _build();

  _$GCreateUserInput _build() {
    final _$result = _$v ??
        new _$GCreateUserInput._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GCreateUserInput', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GCreateUserInput', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GCreateUserInput', 'email'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, r'GCreateUserInput', 'image'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GCreateUserInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserInput extends GUpdateUserInput {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? image;
  @override
  final String? password;
  @override
  final String id;

  factory _$GUpdateUserInput(
          [void Function(GUpdateUserInputBuilder)? updates]) =>
      (new GUpdateUserInputBuilder()..update(updates))._build();

  _$GUpdateUserInput._(
      {this.firstName,
      this.lastName,
      this.image,
      this.password,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdateUserInput', 'id');
  }

  @override
  GUpdateUserInput rebuild(void Function(GUpdateUserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserInputBuilder toBuilder() =>
      new GUpdateUserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserInput &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        image == other.image &&
        password == other.password &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserInput')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('image', image)
          ..add('password', password)
          ..add('id', id))
        .toString();
  }
}

class GUpdateUserInputBuilder
    implements Builder<GUpdateUserInput, GUpdateUserInputBuilder> {
  _$GUpdateUserInput? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdateUserInputBuilder();

  GUpdateUserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _image = $v.image;
      _password = $v.password;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserInput;
  }

  @override
  void update(void Function(GUpdateUserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserInput build() => _build();

  _$GUpdateUserInput _build() {
    final _$result = _$v ??
        new _$GUpdateUserInput._(
            firstName: firstName,
            lastName: lastName,
            image: image,
            password: password,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdateUserInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GCreateBookInput extends GCreateBookInput {
  @override
  final String bookName;
  @override
  final String publishedDate;
  @override
  final String description;
  @override
  final String price;
  @override
  final String image;
  @override
  final String genre;

  factory _$GCreateBookInput(
          [void Function(GCreateBookInputBuilder)? updates]) =>
      (new GCreateBookInputBuilder()..update(updates))._build();

  _$GCreateBookInput._(
      {required this.bookName,
      required this.publishedDate,
      required this.description,
      required this.price,
      required this.image,
      required this.genre})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bookName, r'GCreateBookInput', 'bookName');
    BuiltValueNullFieldError.checkNotNull(
        publishedDate, r'GCreateBookInput', 'publishedDate');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GCreateBookInput', 'description');
    BuiltValueNullFieldError.checkNotNull(price, r'GCreateBookInput', 'price');
    BuiltValueNullFieldError.checkNotNull(image, r'GCreateBookInput', 'image');
    BuiltValueNullFieldError.checkNotNull(genre, r'GCreateBookInput', 'genre');
  }

  @override
  GCreateBookInput rebuild(void Function(GCreateBookInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateBookInputBuilder toBuilder() =>
      new GCreateBookInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateBookInput &&
        bookName == other.bookName &&
        publishedDate == other.publishedDate &&
        description == other.description &&
        price == other.price &&
        image == other.image &&
        genre == other.genre;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bookName.hashCode);
    _$hash = $jc(_$hash, publishedDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateBookInput')
          ..add('bookName', bookName)
          ..add('publishedDate', publishedDate)
          ..add('description', description)
          ..add('price', price)
          ..add('image', image)
          ..add('genre', genre))
        .toString();
  }
}

class GCreateBookInputBuilder
    implements Builder<GCreateBookInput, GCreateBookInputBuilder> {
  _$GCreateBookInput? _$v;

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

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  GCreateBookInputBuilder();

  GCreateBookInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookName = $v.bookName;
      _publishedDate = $v.publishedDate;
      _description = $v.description;
      _price = $v.price;
      _image = $v.image;
      _genre = $v.genre;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateBookInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateBookInput;
  }

  @override
  void update(void Function(GCreateBookInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateBookInput build() => _build();

  _$GCreateBookInput _build() {
    final _$result = _$v ??
        new _$GCreateBookInput._(
            bookName: BuiltValueNullFieldError.checkNotNull(
                bookName, r'GCreateBookInput', 'bookName'),
            publishedDate: BuiltValueNullFieldError.checkNotNull(
                publishedDate, r'GCreateBookInput', 'publishedDate'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GCreateBookInput', 'description'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'GCreateBookInput', 'price'),
            image: BuiltValueNullFieldError.checkNotNull(
                image, r'GCreateBookInput', 'image'),
            genre: BuiltValueNullFieldError.checkNotNull(
                genre, r'GCreateBookInput', 'genre'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateBookInput extends GUpdateBookInput {
  @override
  final String? bookName;
  @override
  final String? publishedDate;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final String? image;
  @override
  final String? genre;
  @override
  final String id;

  factory _$GUpdateBookInput(
          [void Function(GUpdateBookInputBuilder)? updates]) =>
      (new GUpdateBookInputBuilder()..update(updates))._build();

  _$GUpdateBookInput._(
      {this.bookName,
      this.publishedDate,
      this.description,
      this.price,
      this.image,
      this.genre,
      required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdateBookInput', 'id');
  }

  @override
  GUpdateBookInput rebuild(void Function(GUpdateBookInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateBookInputBuilder toBuilder() =>
      new GUpdateBookInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateBookInput &&
        bookName == other.bookName &&
        publishedDate == other.publishedDate &&
        description == other.description &&
        price == other.price &&
        image == other.image &&
        genre == other.genre &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bookName.hashCode);
    _$hash = $jc(_$hash, publishedDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateBookInput')
          ..add('bookName', bookName)
          ..add('publishedDate', publishedDate)
          ..add('description', description)
          ..add('price', price)
          ..add('image', image)
          ..add('genre', genre)
          ..add('id', id))
        .toString();
  }
}

class GUpdateBookInputBuilder
    implements Builder<GUpdateBookInput, GUpdateBookInputBuilder> {
  _$GUpdateBookInput? _$v;

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

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GUpdateBookInputBuilder();

  GUpdateBookInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookName = $v.bookName;
      _publishedDate = $v.publishedDate;
      _description = $v.description;
      _price = $v.price;
      _image = $v.image;
      _genre = $v.genre;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateBookInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateBookInput;
  }

  @override
  void update(void Function(GUpdateBookInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateBookInput build() => _build();

  _$GUpdateBookInput _build() {
    final _$result = _$v ??
        new _$GUpdateBookInput._(
            bookName: bookName,
            publishedDate: publishedDate,
            description: description,
            price: price,
            image: image,
            genre: genre,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdateBookInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpload extends GUpload {
  @override
  final String value;

  factory _$GUpload([void Function(GUploadBuilder)? updates]) =>
      (new GUploadBuilder()..update(updates))._build();

  _$GUpload._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GUpload', 'value');
  }

  @override
  GUpload rebuild(void Function(GUploadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadBuilder toBuilder() => new GUploadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpload && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpload')..add('value', value))
        .toString();
  }
}

class GUploadBuilder implements Builder<GUpload, GUploadBuilder> {
  _$GUpload? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GUploadBuilder();

  GUploadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpload;
  }

  @override
  void update(void Function(GUploadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpload build() => _build();

  _$GUpload _build() {
    final _$result = _$v ??
        new _$GUpload._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GUpload', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
