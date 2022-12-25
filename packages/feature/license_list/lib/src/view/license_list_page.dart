import 'package:flutter/material.dart';
import 'package:method_license_list/license_list.dart';

/// {@template license_list_page}
/// A description for LicenseListPage
/// {@endtemplate}
class LicenseListPage extends StatelessWidget {
  /// {@macro license_list_page}
  const LicenseListPage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LicenseListBloc(),
      child: const Scaffold(
        body: LicenseListView(),
      ),
    );
  }   
}
