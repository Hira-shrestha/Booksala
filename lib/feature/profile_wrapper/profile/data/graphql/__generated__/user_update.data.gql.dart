// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'user_update.data.gql.g.dart';

abstract class GUpdateUserData
    implements Built<GUpdateUserData, GUpdateUserDataBuilder> {
  GUpdateUserData._();

  factory GUpdateUserData([void Function(GUpdateUserDataBuilder b) updates]) =
      _$GUpdateUserData;

  static void _initializeBuilder(GUpdateUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateUserData_updateUser get updateUser;
  static Serializer<GUpdateUserData> get serializer =>
      _$gUpdateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser
    implements
        Built<GUpdateUserData_updateUser, GUpdateUserData_updateUserBuilder> {
  GUpdateUserData_updateUser._();

  factory GUpdateUserData_updateUser(
          [void Function(GUpdateUserData_updateUserBuilder b) updates]) =
      _$GUpdateUserData_updateUser;

  static void _initializeBuilder(GUpdateUserData_updateUserBuilder b) =>
      b..G__typename = 'CreateUserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  GUpdateUserData_updateUser_data get data;
  static Serializer<GUpdateUserData_updateUser> get serializer =>
      _$gUpdateUserDataUpdateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_updateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser.serializer,
        json,
      );
}

abstract class GUpdateUserData_updateUser_data
    implements
        Built<GUpdateUserData_updateUser_data,
            GUpdateUserData_updateUser_dataBuilder> {
  GUpdateUserData_updateUser_data._();

  factory GUpdateUserData_updateUser_data(
          [void Function(GUpdateUserData_updateUser_dataBuilder b) updates]) =
      _$GUpdateUserData_updateUser_data;

  static void _initializeBuilder(GUpdateUserData_updateUser_dataBuilder b) =>
      b..G__typename = 'UserModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get email;
  String? get image;
  static Serializer<GUpdateUserData_updateUser_data> get serializer =>
      _$gUpdateUserDataUpdateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_updateUser_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_updateUser_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_updateUser_data.serializer,
        json,
      );
}
