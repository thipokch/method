import 'package:flutter/material.dart';
import 'package:method_core/login/logic/logic.dart';

/// {@template login_sliver}
/// Sliver of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class LoginSliver extends StatelessWidget {
  /// {@macro login_sliver}
  const LoginSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
