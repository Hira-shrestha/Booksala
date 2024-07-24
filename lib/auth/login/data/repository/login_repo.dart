import 'package:get_it/get_it.dart';
import 'package:library_store/auth/login/data/graphql/__generated__/login_repository.req.gql.dart';
import 'package:library_store/auth/signup/data/user.dart';
import 'package:library_store/graphql/client.dart';
import 'package:hive/hive.dart';

class LoginRepo {
  Future<String?> login(String email, String password) async {
    final Box tokenBox = Hive.box('tokenBox');
    final Box isLoggedIn = Hive.box("isLoggedIn");

    final query = GLoginReq((b) => b.vars
      ..email = email
      ..password = password);

    final NetworkClient networkClient = GetIt.I<NetworkClient>();

    final res = await networkClient.client.request(query).first;

    if (res.data == null) {
      return res.graphqlErrors?.first.toString();
      // throw Exception("Failed to create user");
    } else {
      User user = User.fromJson(res.data!.login.data.toJson());
      tokenBox.put('accessToken', res.data!.login.data.access_token);
      tokenBox.put("refreshToken", res.data!.login.data.refresh_token);
      isLoggedIn.put("isLoggedIn", true);
      print(user);

      return "";
    }
  }
}
