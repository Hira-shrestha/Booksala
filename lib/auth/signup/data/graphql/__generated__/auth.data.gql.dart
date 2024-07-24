// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'auth.data.gql.g.dart';

abstract class GCreateUserData
    implements Built<GCreateUserData, GCreateUserDataBuilder> {
  GCreateUserData._();

  factory GCreateUserData([void Function(GCreateUserDataBuilder b) updates]) =
      _$GCreateUserData;

  static void _initializeBuilder(GCreateUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateUserData_createUser get createUser;
  static Serializer<GCreateUserData> get serializer =>
      _$gCreateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData.serializer,
        json,
      );
}

abstract class GCreateUserData_createUser
    implements
        Built<GCreateUserData_createUser, GCreateUserData_createUserBuilder> {
  GCreateUserData_createUser._();

  factory GCreateUserData_createUser(
          [void Function(GCreateUserData_createUserBuilder b) updates]) =
      _$GCreateUserData_createUser;

  static void _initializeBuilder(GCreateUserData_createUserBuilder b) =>
      b..G__typename = 'CreateUserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  GCreateUserData_createUser_data get data;
  static Serializer<GCreateUserData_createUser> get serializer =>
      _$gCreateUserDataCreateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData_createUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData_createUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData_createUser.serializer,
        json,
      );
}

abstract class GCreateUserData_createUser_data
    implements
        Built<GCreateUserData_createUser_data,
            GCreateUserData_createUser_dataBuilder> {
  GCreateUserData_createUser_data._();

  factory GCreateUserData_createUser_data(
          [void Function(GCreateUserData_createUser_dataBuilder b) updates]) =
      _$GCreateUserData_createUser_data;

  static void _initializeBuilder(GCreateUserData_createUser_dataBuilder b) =>
      b..G__typename = 'UserModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get email;
  String? get image;
  DateTime get createdAt;
  DateTime get updatedAt;
  static Serializer<GCreateUserData_createUser_data> get serializer =>
      _$gCreateUserDataCreateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData_createUser_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData_createUser_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData_createUser_data.serializer,
        json,
      );
}

abstract class GUploadImageData
    implements Built<GUploadImageData, GUploadImageDataBuilder> {
  GUploadImageData._();

  factory GUploadImageData([void Function(GUploadImageDataBuilder b) updates]) =
      _$GUploadImageData;

  static void _initializeBuilder(GUploadImageDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uploadImage;
  static Serializer<GUploadImageData> get serializer =>
      _$gUploadImageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUploadImageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUploadImageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUploadImageData.serializer,
        json,
      );
}
