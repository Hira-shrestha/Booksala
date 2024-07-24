import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NetworkClient {
  late Client client;
  // late HttpLink httpLink;
  late HttpLink link;

  void setup() {
    final GetIt getIt = GetIt.I;
    final tokenBox = getIt<Box>(instanceName: "tokenBox");
    final isLoggedIn = getIt<Box>(instanceName: "isLoggedIn");
    String? accessToken = tokenBox.get("accessToken");
    bool? loginInfo = isLoggedIn.get("isLoggedIn");

    final cacheControlHeaders = {
      'Cache-Control': 'no-cache, no-store, must-revalidate',
      'Pragma': 'no-cache',
      'Expires': '0',
    };

    if (loginInfo != true) {
      link = HttpLink("https://8001-27-34-34-228.ngrok-free.app/graphql");
    } else {
      print(accessToken);
      link = HttpLink(
        "https://8001-27-34-34-228.ngrok-free.app/graphql",
        defaultHeaders: {
          'Authorization': 'Bearer $accessToken',
          ...cacheControlHeaders
        },
      );
    }

    client = Client(link: link);
  }
}


  // Client client(Dio dio) => Client(
  //       link: DioLink(Env.instance.graphqlEndPoint, client: dio),
  //       defaultFetchPolicies: <OperationType, FetchPolicy>{
  //         OperationType.query: FetchPolicy.NetworkOnly,
  //         OperationType.mutation: FetchPolicy.NetworkOnly,
  //       },
  //     );