import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeBloc(
          navigator: HomeRoute.navigator,
        ),
        child: HomeView(
          child: child,
        ),
      );
}
