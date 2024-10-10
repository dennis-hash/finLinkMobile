class UserModel {
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String profilePicture;

  ///constructor user model
  UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  ///helper function to get full name
  String get name => '$firstName $lastName';

  ///creating  model
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      profilePicture: json['profilePicture'],
    );
  }

  ///converting to json
  Map<String, dynamic> toJson() => {
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'phoneNumber': phoneNumber,
    'profilePicture': profilePicture,
  };

}