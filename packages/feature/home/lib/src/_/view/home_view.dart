import 'package:flutter/material.dart';
import 'package:method_home/home.dart';

/// {@template home_view}
/// View of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
