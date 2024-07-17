import 'package:library_store/auth/authentication/repo/auth_repo.dart';

sealed class AuthenticationEvent {
  const AuthenticationEvent();
}

final class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status);

  final AuthenticationStatus status;
}

final class AuthenticationLogoutRequested extends AuthenticationEvent {}
