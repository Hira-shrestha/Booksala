import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:library_store/auth/login/data/repository/login_repo.dart';
import 'package:library_store/auth/login/presentation/cubit/newlogin_state.dart';


class NewLoginCubit extends Cubit<NewLoginState> {
  NewLoginCubit() : super(NewLoginState());

  LoginRepo repo = LoginRepo();

  void onEmailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void onPasswordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  void resetState() {
    emit(const NewLoginState(status: FormzSubmissionStatus.initial));
  }

  void onLogin() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    await Future.delayed(Duration(seconds: 5));
    repo.login(state.email ?? 'myemail@gmail.com', state.password ?? 'Ebpearls@123').then((value) {
      if (value == null) {
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      } else {
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    });
  }
}
