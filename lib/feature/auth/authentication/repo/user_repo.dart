import 'dart:async';

import 'package:library_store/feature/auth/signup/data/user.dart';

class UserRepository {
  CreateUser? _user;

  Future<CreateUser?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = CreateUser(
          firstName: "firstName", lastName: "lastName", email: "email"),
    );
  }
}
