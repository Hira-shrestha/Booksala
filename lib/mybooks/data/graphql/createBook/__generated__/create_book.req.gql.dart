// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:library_store/mybooks/data/graphql/createBook/__generated__/create_book.ast.gql.dart'
    as _i5;
import 'package:library_store/mybooks/data/graphql/createBook/__generated__/create_book.data.gql.dart'
    as _i2;
import 'package:library_store/mybooks/data/graphql/createBook/__generated__/create_book.var.gql.dart'
    as _i3;

part 'create_book.req.gql.g.dart';

abstract class GCreateBookReq
    implements
        Built<GCreateBookReq, GCreateBookReqBuilder>,
        _i1.OperationRequest<_i2.GCreateBookData, _i3.GCreateBookVars> {
  GCreateBookReq._();

  factory GCreateBookReq([void Function(GCreateBookReqBuilder b) updates]) =
      _$GCreateBookReq;

  static void _initializeBuilder(GCreateBookReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateBook',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateBookVars get vars;
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
  _i2.GCreateBookData? Function(
    _i2.GCreateBookData?,
    _i2.GCreateBookData?,
  )? get updateResult;
  @override
  _i2.GCreateBookData? get optimisticResponse;
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
  _i2.GCreateBookData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateBookData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateBookData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateBookData, _i3.GCreateBookVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateBookReq> get serializer =>
      _$gCreateBookReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateBookReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateBookReq.serializer,
        json,
      );
}
