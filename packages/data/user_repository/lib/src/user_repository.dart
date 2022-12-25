import 'dart:async';
import 'package:flutter/material.dart';

part 'iuser_repository.dart';

/// {@template user_repository}
/// UserRepository description
/// {@endtemplate}
class UserRepository implements IUserRepository { 
  /// {@macro user_repository}
  const UserRepository();

  @override
  FutureOr<ThemeMode> getThemeMode() async {
    //TODO: Add Logic
    return Future.value();
  }

  @override
  FutureOr<void> setThemeMode() async {
    //TODO: Add Logic
    return Future.value();
  }

}
