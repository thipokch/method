part of 'user_repository.dart';

/// An interface for UserRepository
abstract class IUserRepository{ 
  /// A description for getThemeMode
  FutureOr<ThemeMode> getThemeMode();
  
  /// A description for setThemeMode
  FutureOr<void> setThemeMode();
  
}
