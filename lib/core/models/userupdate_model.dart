class UserUpdateModel {
  String firstName;
  String lastName;
  String? image;
  String email;

  UserUpdateModel(
      {required this.firstName,
      required this.lastName,
      this.image,
      required this.email});

  factory UserUpdateModel.fromJson(Map<String, dynamic> json) {
    return UserUpdateModel(
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'image': image
    };
  }
}
