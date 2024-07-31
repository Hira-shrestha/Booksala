import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_store/feature/User/user.dart';

class NetworkClient {
  late Client client;
  // late HttpLink httpLink;
  late HttpLink link;

  void setup() {
    final GetIt getIt = GetIt.I;
    final isLoggedIn = getIt<Box>(instanceName: "isLoggedIn");
    bool? loginInfo = isLoggedIn.get("isLoggedIn");

    if (loginInfo != true) {
      link = HttpLink(
          "https://992a-2400-1a00-baa0-5ca4-5f1-52e9-e976-9b6f.ngrok-free.app/graphql");
    } else {
      var userBox = Hive.box<User>('userBox');
      User? user = userBox.get('currentUser');

      if (user != null) {
        link = HttpLink(
          "https://992a-2400-1a00-baa0-5ca4-5f1-52e9-e976-9b6f.ngrok-free.app/graphql",
          defaultHeaders: {
            'Authorization': 'Bearer ${user.accessToken}',
          },
        );
      }
    }

    client = Client(
      link: link,
      defaultFetchPolicies: {
        OperationType.mutation: FetchPolicy.NetworkOnly,
        OperationType.query: FetchPolicy.NetworkOnly,
      },
    );
  }
}
