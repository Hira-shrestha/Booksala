
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    String? firstName,
    String? lastName,
   required String email,
    String? image,
    required String password,
    String? error,
  }) = _SignupState;
}