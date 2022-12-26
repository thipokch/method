import 'package:flutter/material.dart';
import 'package:method_app_info/app_info.dart';

/// {@template app_info_page}
/// A description for AppInfoPage
/// {@endtemplate}
class AppInfoPage extends StatelessWidget {
  /// {@macro app_info_page}
  const AppInfoPage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppInfoCubit(),
      child: const Scaffold(
        body: AppInfoView(),
      ),
    );
  }   
}
