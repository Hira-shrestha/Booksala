import 'package:get_it/get_it.dart';
import 'package:library_store/auth/signup/data/graphql/__generated__/auth.req.gql.dart';
import 'package:library_store/auth/signup/data/user.dart';
import 'package:library_store/graphql/client.dart';

class AuthRepo {
  Future<(User, String?)> createUser(User user, String password) async {
    final query = GCreateUserReq((b) => b.vars.createUserInput
      ..email = user.email
      ..firstName = user.firstName
      ..lastName = user.lastName
      ..image = 'image url'
      ..password = password);

    final NetworkClient networkClient = GetIt.I<NetworkClient>();
    final res = await networkClient.client.request(query).first;
    if (res.data == null) {
      throw Exception("Failed to create user");
    }
    final data = res.data!.createUser;

    return (
      User(
          firstName: data.data.firstName,
          lastName: data.data.lastName,
          email: data.data.email),
      res.graphqlErrors?.first.toString()
    );
  }
}
