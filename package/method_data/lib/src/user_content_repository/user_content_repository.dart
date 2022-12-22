/// {@template user_content_repository}
/// UserContentRepository description
/// {@endtemplate}
class UserContentRepository {
  const UserContentRepository._();
  static UserContentRepository? _instance;

  /// {@macro user_content_repository}
  static UserContentRepository get instance =>
      _instance ??= const UserContentRepository._();
}
