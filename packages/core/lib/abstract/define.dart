/// Implements a list of given [D] definitions.
abstract class Define<D> {
  const Define({
    this.definitions = const [],
  });

  final List<D> definitions;
}

/// Implements a list of given [D] definitions instructed by [T] templates.
abstract class DefineDocument<D, T> extends Define<D> {
  const DefineDocument({
    required this.template,
    definitions = const [],
  }) : super(
          definitions: definitions,
        );
  final T template;
}
