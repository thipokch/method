/// {@template user_setting_repository}
/// UserSettingRepository description
/// {@endtemplate}
class UserSettingRepository {
  const UserSettingRepository._();
  static UserSettingRepository? _instance;

  /// {@macro user_setting_repository}
  static UserSettingRepository get instance =>
      _instance ??= const UserSettingRepository._();
}
