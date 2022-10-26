import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/license/model/license_data.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';

import '../license_list.dart';

part 'license_list_sliver.dart';

class LicenseListView extends StatelessWidget {
  const LicenseListView({super.key});

  @override
  Widget build(BuildContext context) => LicenseListBuilder(
        builder: (context, state) => state == null
            ? const CupertinoActivityIndicator()
            : ListView.builder(
                itemCount: state.packages.length,
                itemBuilder: (context, index) =>
                    _LicenseListTile.itemBuilder(context, index, state),
              ),
      );
}

class _LicenseListTile extends StatelessWidget {
  const _LicenseListTile({
    required this.bloc,
    required this.packageName,
    required this.numberLicenses,
  });

  static Widget itemBuilder(
    BuildContext context,
    int index,
    LicenseData state,
  ) =>
      _LicenseListTile(
        bloc: context.read(),
        packageName: state.packages[index],
        numberLicenses:
            state.packageLicenseBindings[state.packages[index]]?.length ?? 0,
      );

  final LicenseListBloc bloc;

  final String packageName;
  final int numberLicenses;

  @override
  Widget build(BuildContext context) => ListTile(
        // key: ValueKey(index),
        title: Text(packageName),
        trailing: const Icon(ElementSymbol.chevronForward),
        subtitle: Text(MaterialLocalizations.of(context)
            .licensesPackageDetailText(numberLicenses)),
        onTap: () => bloc.selectPackage(packageName),
      );
}