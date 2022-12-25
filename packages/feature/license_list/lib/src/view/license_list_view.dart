import 'package:flutter/material.dart';
import 'package:method_license_list/license_list.dart';

/// {@template license_list_view}
/// View of the LicenseListPage.
///
/// Add what it does
/// {@endtemplate}
class LicenseListView extends StatelessWidget {
  /// {@macro license_list_view}
  const LicenseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LicenseListBloc, LicenseListState>(
      builder: (context, state) {
        return Center(child: Text(state.toString()));
      },
    );
  }
}
