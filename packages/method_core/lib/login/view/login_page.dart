import 'package:flutter/material.dart';
import 'package:method_core/login/logic/logic.dart';
import 'package:method_core/login/view/login_view.dart';

/// {@template login_page}
/// A description for LoginPage
/// {@endtemplate}
class LoginPage extends StatelessWidget {
  /// {@macro login_page}
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const Scaffold(
        body: LoginView(),
      ),
    );
  }
}
