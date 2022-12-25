import 'package:flutter/material.dart';
import 'package:method_license_detail/license_detail.dart';

/// {@template license_detail_sliver}
/// Sliver of the LicenseDetailPage.
///
/// Add what it does
/// {@endtemplate}
class LicenseDetailSliver extends StatelessWidget {
  /// {@macro license_detail_sliver}
  const LicenseDetailSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LicenseDetailBloc, LicenseDetailState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
