import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:library_store/core/models/userupdate_model.dart';
import 'package:library_store/feature/User/user.dart';
import 'package:library_store/feature/profile_wrapper/profile/data/graphql/__generated__/user_update.req.gql.dart';
import 'package:library_store/graphql/client.dart';

class UserUpdateRepo {
  NetworkClient networkClient = GetIt.I<NetworkClient>();

  Future<UserUpdateModel> updateUser(
    String firstName,
    String lastName,
    String password,
    String image,
    String userId,
  ) async {
    final mutation = GUpdateUserReq((b) => b
      ..vars.updateUserInput.firstName = firstName
      ..vars.updateUserInput.lastName = lastName
      ..vars.updateUserInput.image = image
      ..vars.updateUserInput.password = password
      ..vars.updateUserInput.id = userId);

    try {
      final res = await networkClient.client.request(mutation).first;

      if (res.hasErrors) {
        throw Exception("graphql error: ${res.graphqlErrors}");
      }

      if (res.data != null) {
        var userBox = await Hive.openBox<User>('userBox');
        User? user = userBox.get("currentUser");
        if (user != null) {
          user.firstName = res.data?.updateUser.data.firstName;
          user.lastName = res.data?.updateUser.data.lastName;
        }

        return UserUpdateModel.fromJson(res.data!.updateUser.data.toJson());
      } else {
        throw Exception("No data received from the server.");
      }
    } catch (e) {
      throw Exception("$e");
    }
  }
}
