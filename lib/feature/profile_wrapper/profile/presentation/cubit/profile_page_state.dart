import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/userupdate_model.dart';

class ProfilePageState {
  final AppState status;
  final String? userId;
  final UserUpdateModel? user;

  final bool updateProfile;
  final String error;

  ProfilePageState(
      {this.status = AppState.initial,
      this.userId,
      this.user,
      this.updateProfile = false,
      this.error = ''});

  ProfilePageState copyWith({
    AppState? status,
    String? userId,
    UserUpdateModel? user,
    bool? updateProfile,
    String? error,
  }) {
    return ProfilePageState(
      status: status ?? this.status,
      userId: userId ?? this.userId,
      user: user ?? this.user,
      updateProfile: updateProfile ?? this.updateProfile,
      error: error ?? this.error,
    );
  }
}
