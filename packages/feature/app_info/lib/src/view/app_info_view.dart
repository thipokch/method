import 'package:flutter/material.dart';
import 'package:method_app_info/app_info.dart';

/// {@template app_info_view}
/// View of the AppInfoPage.
///
/// Add what it does
/// {@endtemplate}
class AppInfoView extends StatelessWidget {
  /// {@macro app_info_view}
  const AppInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppInfoCubit, AppInfoState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
