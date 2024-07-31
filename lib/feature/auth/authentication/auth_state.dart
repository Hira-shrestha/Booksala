import 'package:equatable/equatable.dart';
import 'package:library_store/feature/auth/authentication/repo/auth_repo.dart';
import 'package:library_store/feature/auth/signup/data/user.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._(
      {this.status = AuthenticationStatus.unknown, this.user});

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(CreateUser user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final CreateUser? user;

  @override
  List<Object> get props => [status, user!];
}

// mixin empty {}
