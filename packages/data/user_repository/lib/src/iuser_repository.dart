part of 'user_repository.dart';

/// An interface for UserRepository
abstract class IUserRepository {
  /// A description for streamUser
  Stream<User> streamUser();

  /// A description for setThemeMode
  void setThemeMode(ThemeMode themeMode);
}
