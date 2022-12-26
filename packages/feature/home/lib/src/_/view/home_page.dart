import 'package:flutter/material.dart';
import 'package:method_home/home.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const Scaffold(
        body: HomeView(),
      ),
    );
  }   
}
