import 'package:flutter/material.dart';
import 'package:method_license_detail/license_detail.dart';

/// {@template license_detail_view}
/// View of the LicenseDetailPage.
///
/// Add what it does
/// {@endtemplate}
class LicenseDetailView extends StatelessWidget {
  /// {@macro license_detail_view}
  const LicenseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LicenseDetailBloc, LicenseDetailState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
