class CreateUser {
  String firstName;
  String lastName;
  String email;
  String? image;

  CreateUser({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.image,
  });

  factory CreateUser.fromJson(Map<String, dynamic> json) => CreateUser(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "image": image,
      };

  static void parseUser() {}
}
