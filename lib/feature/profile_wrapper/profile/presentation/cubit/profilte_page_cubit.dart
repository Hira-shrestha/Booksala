import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/userupdate_model.dart';
import 'package:library_store/feature/User/user.dart';
import 'package:library_store/feature/profile_wrapper/profile/data/repository/user_update_repo.dart';
import 'package:library_store/feature/profile_wrapper/profile/presentation/cubit/profile_page_state.dart';

class ProfiltePageCubit extends Cubit<ProfilePageState> {
  ProfiltePageCubit() : super(ProfilePageState(status: AppState.initial)) {
    getUserData();
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  UserUpdateRepo repo = UserUpdateRepo();

  void getUserData() async {
    var userBox = Hive.box<User>('userBox');
    User? user = userBox.get('currentUser');

    firstNameController.text = user!.firstName ?? '';
    lastNameController.text = user.lastName ?? '';
    emailController.text = user.email ?? '';

    emit(state.copyWith(userId: user.userId));
  }

  void updateUser(UserUpdateModel user) {
    emit(state.copyWith(user: user));
  }

  Future<void> updateView(UserUpdateModel user) async {
    firstNameController.text = user.firstName;
    lastNameController.text = user.lastName;
    emailController.text = user.email;
  }

  void resetState() {
    emit(state.copyWith(status: AppState.initial));
  }

  void enableUpdate(bool updateValue) {
    emit(state.copyWith(updateProfile: !updateValue));
  }

  void performUpdat(String userId) async {
    try {
      final user = await repo.updateUser(firstNameController.text,
          lastNameController.text, passwordController.text, "asf", userId);
      // updateView(user);
      emit(state.copyWith(status: AppState.success, user: user));
    } catch (e) {
      emit(state.copyWith(status: AppState.failure, error: e.toString()));
    }
  }
}
