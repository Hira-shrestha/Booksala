import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:library_store/auth/signup/data/repository/authrepo.dart';
import 'package:library_store/auth/signup/data/user.dart';
import 'package:library_store/auth/signup/presentation/cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.repo) : super( const SignupState(email: "", password: ""));

  final AuthRepo repo;

  void onFirstNameChanged(String name) {
    emit(state.copyWith(firstName: name));
  }

  void onLastNameChanged(String name) {
    emit(state.copyWith(lastName: name));
  }

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
  }
  void resetState() {
    emit(SignupState(email: state.email, password: state.password, status: FormzSubmissionStatus.initial));
  }

  void onSubmit() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
   await Future.delayed(Duration(seconds: 5));
    final User user = User(firstName: state.firstName ?? "", lastName: state.lastName ?? "", email: state.email);
    repo.createUser(user, state.password).then((value) {
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    }).catchError((error) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure, error: error.toString()));
    });
  }
}
