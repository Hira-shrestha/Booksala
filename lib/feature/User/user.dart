import 'package:hive/hive.dart';
part 'user.g.dart';

// @HiveType(typeId: 50, adapterName: 'UserAdapter')
// class User extends HiveObject {
//   User({this.email, this.userId, this.firstName, this.lastName, this.accessToken, this.refreshToken});

//   @HiveField(0)
//   String? email;

//   @HiveField(1)
//   String? userId;

//   @HiveField(2)
//   String? firstName;

//   @HiveField(3)
//   String? lastName;

//   @HiveField(4)
//   String? accessToken;

//   @HiveField(5)
//   String? refreshToken;
// }

@HiveType(typeId: 50, adapterName: 'UserAdapter')
class User extends HiveObject {
  User(
      {this.email,
      this.userId,
      this.firstName,
      this.lastName,
      this.accessToken,
      this.refreshToken});

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

  factory User.parseUser(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      userId: json['userId'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }
}
