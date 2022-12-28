import 'dart:async';
import 'package:flutter/material.dart';
import 'package:method_user_repository/user_repository.dart';

part 'iuser_repository.dart';

/// {@template user_repository}
/// UserRepository description
/// {@endtemplate}
class UserRepository implements IUserRepository {
  /// {@macro user_repository}
  const UserRepository();

  static final _controller = StreamController<User>.broadcast()
    ..stream.listen((value) => _currentUser = value);

  static User _currentUser = User(themeMode: ThemeMode.system);

  @override
  Stream<User> streamUser() => _controller.stream;

  @override
  void setThemeMode(ThemeMode themeMode) =>
      _controller.add(_currentUser.copyWith(themeMode: themeMode));

  void dispose() => _controller.close();
}
