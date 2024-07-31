
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'newlogin_state.freezed.dart';

@freezed
class NewLoginState with _$NewLoginState {
  const factory NewLoginState(
      {@Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
      String? email,
      String? password,
      String? error}) = _NewLoginState;
}
