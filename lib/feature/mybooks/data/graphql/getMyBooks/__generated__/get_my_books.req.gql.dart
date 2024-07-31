// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.ast.gql.dart'
    as _i5;
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.data.gql.dart'
    as _i2;
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.var.gql.dart'
    as _i3;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i6;

part 'get_my_books.req.gql.g.dart';

abstract class GGetBookByAuthorReq
    implements
        Built<GGetBookByAuthorReq, GGetBookByAuthorReqBuilder>,
        _i1
        .OperationRequest<_i2.GGetBookByAuthorData, _i3.GGetBookByAuthorVars> {
  GGetBookByAuthorReq._();

  factory GGetBookByAuthorReq(
          [void Function(GGetBookByAuthorReqBuilder b) updates]) =
      _$GGetBookByAuthorReq;

  static void _initializeBuilder(GGetBookByAuthorReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetBookByAuthor',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetBookByAuthorVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetBookByAuthorData? Function(
    _i2.GGetBookByAuthorData?,
    _i2.GGetBookByAuthorData?,
  )? get updateResult;
  @override
  _i2.GGetBookByAuthorData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GGetBookByAuthorData? parseData(Map<String, dynamic> json) =>
      _i2.GGetBookByAuthorData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetBookByAuthorData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetBookByAuthorData, _i3.GGetBookByAuthorVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetBookByAuthorReq> get serializer =>
      _$gGetBookByAuthorReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetBookByAuthorReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBookByAuthorReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetBookByAuthorReq.serializer,
        json,
      );
}
