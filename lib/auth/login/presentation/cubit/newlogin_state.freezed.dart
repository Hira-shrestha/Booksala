// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newlogin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewLoginState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewLoginStateCopyWith<NewLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewLoginStateCopyWith<$Res> {
  factory $NewLoginStateCopyWith(
          NewLoginState value, $Res Function(NewLoginState) then) =
      _$NewLoginStateCopyWithImpl<$Res, NewLoginState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      String? email,
      String? password,
      String? error});
}

/// @nodoc
class _$NewLoginStateCopyWithImpl<$Res, $Val extends NewLoginState>
    implements $NewLoginStateCopyWith<$Res> {
  _$NewLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewLoginStateImplCopyWith<$Res>
    implements $NewLoginStateCopyWith<$Res> {
  factory _$$NewLoginStateImplCopyWith(
          _$NewLoginStateImpl value, $Res Function(_$NewLoginStateImpl) then) =
      __$$NewLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      String? email,
      String? password,
      String? error});
}

/// @nodoc
class __$$NewLoginStateImplCopyWithImpl<$Res>
    extends _$NewLoginStateCopyWithImpl<$Res, _$NewLoginStateImpl>
    implements _$$NewLoginStateImplCopyWith<$Res> {
  __$$NewLoginStateImplCopyWithImpl(
      _$NewLoginStateImpl _value, $Res Function(_$NewLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? error = freezed,
  }) {
    return _then(_$NewLoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewLoginStateImpl implements _NewLoginState {
  const _$NewLoginStateImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.email,
      this.password,
      this.error});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? error;

  @override
  String toString() {
    return 'NewLoginState(status: $status, email: $email, password: $password, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewLoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, email, password, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewLoginStateImplCopyWith<_$NewLoginStateImpl> get copyWith =>
      __$$NewLoginStateImplCopyWithImpl<_$NewLoginStateImpl>(this, _$identity);
}

abstract class _NewLoginState implements NewLoginState {
  const factory _NewLoginState(
      {final FormzSubmissionStatus status,
      final String? email,
      final String? password,
      final String? error}) = _$NewLoginStateImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$NewLoginStateImplCopyWith<_$NewLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
