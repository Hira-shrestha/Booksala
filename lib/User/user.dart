

import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 50, adapterName: 'UserAdapter')
class User extends HiveObject {
  User({this.email, this.userId, this.firstName, this.lastName, this.accessToken, this.refreshToken});

  @HiveField(0)
  String? email;

  @HiveField(1)
  String? userId;

  @HiveField(2)
  String? firstName;

  @HiveField(3)
  String? lastName;

  @HiveField(4)
  String? accessToken;

  @HiveField(5)
  String? refreshToken;
}
