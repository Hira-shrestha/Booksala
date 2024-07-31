// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:library_store/feature/auth/signup/data/graphql/__generated__/auth.ast.gql.dart'
    as _i5;
import 'package:library_store/feature/auth/signup/data/graphql/__generated__/auth.data.gql.dart'
    as _i2;
import 'package:library_store/feature/auth/signup/data/graphql/__generated__/auth.var.gql.dart'
    as _i3;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i6;

part 'auth.req.gql.g.dart';

abstract class GCreateUserReq
    implements
        Built<GCreateUserReq, GCreateUserReqBuilder>,
        _i1.OperationRequest<_i2.GCreateUserData, _i3.GCreateUserVars> {
  GCreateUserReq._();

  factory GCreateUserReq([void Function(GCreateUserReqBuilder b) updates]) =
      _$GCreateUserReq;

  static void _initializeBuilder(GCreateUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateUserVars get vars;
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
  _i2.GCreateUserData? Function(
    _i2.GCreateUserData?,
    _i2.GCreateUserData?,
  )? get updateResult;
  @override
  _i2.GCreateUserData? get optimisticResponse;
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
  _i2.GCreateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateUserData, _i3.GCreateUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateUserReq> get serializer =>
      _$gCreateUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateUserReq.serializer,
        json,
      );
}

abstract class GUploadImageReq
    implements
        Built<GUploadImageReq, GUploadImageReqBuilder>,
        _i1.OperationRequest<_i2.GUploadImageData, _i3.GUploadImageVars> {
  GUploadImageReq._();

  factory GUploadImageReq([void Function(GUploadImageReqBuilder b) updates]) =
      _$GUploadImageReq;

  static void _initializeBuilder(GUploadImageReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UploadImage',
    )
    ..executeOnListen = true;

  @override
  _i3.GUploadImageVars get vars;
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
  _i2.GUploadImageData? Function(
    _i2.GUploadImageData?,
    _i2.GUploadImageData?,
  )? get updateResult;
  @override
  _i2.GUploadImageData? get optimisticResponse;
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
  _i2.GUploadImageData? parseData(Map<String, dynamic> json) =>
      _i2.GUploadImageData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUploadImageData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUploadImageData, _i3.GUploadImageVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUploadImageReq> get serializer =>
      _$gUploadImageReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUploadImageReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUploadImageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUploadImageReq.serializer,
        json,
      );
}
