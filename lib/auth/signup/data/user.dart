class User {
  String firstName;
  String lastName;
  String email;
  String? image;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
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
}
