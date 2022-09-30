/// Implements a list of given [D] definitions.
abstract class DefineDefinitions<D> {
  List<D> get definitions;
}

// /// Implements a list of given [D] definitions instructed by [T] templates.
// abstract class DefineDocument<D, T> extends Define<D> {
//   T get template;
// }

abstract class DefineTemplate<T> {
  T get template;
}
