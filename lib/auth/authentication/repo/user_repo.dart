import 'dart:async';

import 'package:library_store/auth/signup/data/user.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user =
          User(firstName: "firstName", lastName: "lastName", email: "email"),
    );
  }
}
