import 'package:altogic_app/src/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
}
