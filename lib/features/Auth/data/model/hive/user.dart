import 'package:hive/hive.dart';

part 'user.g.dart'; // This is necessary for code generation

@HiveType(typeId: 0) // Make sure the typeId is unique across all adapters
class User {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String username;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String avatar;

  // If you're using an access token or any other field, add it here
  // @HiveField(4)
  // final String accessToken;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.avatar,
    // required this.accessToken,
  });
}
