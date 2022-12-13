import 'package:flutter/material.dart';
import 'package:method_core/login/logic/logic.dart';

/// {@template login_view}
/// View of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class LoginView extends StatelessWidget {
  /// {@macro login_view}
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
