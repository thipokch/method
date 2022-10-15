import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocWidget extends StatelessWidget {
  final StateStreamableSource<Object?> Function(BuildContext) create;
  final Widget Function(BuildContext, dynamic) builder;

  const BlocWidget({
    super.key,
    required this.create,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: create,
        child: BlocBuilder(
          builder: builder,
        ),
      );
}
