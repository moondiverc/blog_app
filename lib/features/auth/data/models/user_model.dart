import 'package:blog_app/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required super.id, required super.name, required super.email});

  // user model related to the fetching
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      // cant be null, but just in case
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
    );
  }
}
