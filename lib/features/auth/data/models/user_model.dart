import 'package:blog_app/core/common/entities/user.dart';

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

  UserModel copyWith({String? id, String? name, String? email}) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }
}
