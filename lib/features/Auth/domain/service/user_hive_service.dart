import 'package:hive/hive.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_model/user_model.dart';
import 'package:nepstayapp/features/Auth/data/model/hive/user.dart';

class UserHiveService {
  static const String userBoxName = 'userBox';

  Future<void> saveUserToHive(User user) async {
    final box = await Hive.openBox<User>(userBoxName);
    await box.put('currentUser', user);
  }

  Future<User?> getUserFromHive() async {
    final box = await Hive.openBox<User>(userBoxName);
    return box.get('currentUser');
  }

  Future<void> clearUserData() async {
    final box = await Hive.openBox<User>(userBoxName);
    await box.clear();
  }
}

// extension AuthModelExtension on AuthModel {
//   User toHiveUser() {
//     return User(
//       id: user?.pk ??
//           '', // Ensure user is not null and provide default empty string if necessary
//       username:
//           user?.email ?? '', // Provide default empty string if email is null
//       email: user?.email ?? '', // Provide default empty string if email is null
//       avatar:
//           user?.avatar ?? '', // Provide default empty string if avatar is null
//     );
//   }
// }
