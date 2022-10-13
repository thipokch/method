import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComponentProvider<T extends StateStreamableSource<Object?>>
    extends StatelessWidget {
  final Widget child;
  final T Function(BuildContext) create;
  final void Function(T bloc)? onCreate;

  const ComponentProvider({
    super.key,
    required this.create,
    required this.onCreate,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) {
          final bloc = create(_);
          onCreate?.call(bloc);

          return bloc;
        },
        child: child,
      );
}
