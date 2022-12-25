import 'package:flutter/material.dart';
import 'package:method_license_list/license_list.dart';

/// {@template license_list_sliver}
/// Sliver of the LicenseListPage.
///
/// Add what it does
/// {@endtemplate}
class LicenseListSliver extends StatelessWidget {
  /// {@macro license_list_sliver}
  const LicenseListSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LicenseListBloc, LicenseListState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
