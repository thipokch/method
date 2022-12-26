import 'package:flutter/material.dart';
import 'package:method_home/home.dart';

/// {@template home_sliver}
/// Sliver of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeSliver extends StatelessWidget {
  /// {@macro home_sliver}
  const HomeSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
