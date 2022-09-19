import 'package:repository/driver.dart';

abstract class RepositoryCollection<DRIVER extends Source> {
  const RepositoryCollection(this.source);
  final DRIVER source;
}
