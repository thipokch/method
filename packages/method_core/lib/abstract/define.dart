/// Implements a list of given [D] definitions.
abstract class Template<D> {
  List<D> get definitions;
}

// /// Implements a list of given [D] definitions instructed by [T] templates.
// abstract class DefineDocument<D, T> extends Define<D> {
//   T get template;
// }

abstract class Document<T, D> {
  T get template;
  List<D?> get definitions;
}
