import 'package:flutter/material.dart';
import 'package:method_license_detail/license_detail.dart';

/// {@template license_detail_page}
/// A description for LicenseDetailPage
/// {@endtemplate}
class LicenseDetailPage extends StatelessWidget {
  /// {@macro license_detail_page}
  const LicenseDetailPage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LicenseDetailBloc(),
      child: const Scaffold(
        body: LicenseDetailView(),
      ),
    );
  }   
}
