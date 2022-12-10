class Repository {
  Repository._();

  static Future<Repository> open() async => Repository._();

  Future<void> reset() async => throw UnimplementedError();
}
