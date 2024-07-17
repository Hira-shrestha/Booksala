

import 'package:library_store/auth/login/data/graphql/__generated__/login_repository.req.gql.dart';
import 'package:library_store/auth/signup/data/user.dart';
import 'package:library_store/graphql/client.dart';

class LoginRepo {
  Future<String?> login(String email, String password) async {
    final query = GLoginReq((b) => b.vars
    ..email = email
    ..password = password);

    final res = await client.request(query).first;

    if (res.data == null) {

      return res.graphqlErrors?.first.toString();
      // throw Exception("Failed to create user");
    } else {
      if (res.data!.login.data != null) {
       User user = User.fromJson(res.data!.login.data!.toJson());
       print(user);
      }
      return null;
    }
  }
}