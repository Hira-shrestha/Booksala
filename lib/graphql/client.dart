import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

final link = HttpLink(
    "https://10dc-27-34-34-90.ngrok-free.app/graphql");

final client = Client(link: link);
