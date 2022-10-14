import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/components/acknowledgement_detail/route.dart';
import 'package:method/route/routes.dart';
import 'package:method_style/element_symbol.dart';
import 'package:flutter/material.dart' hide Flow;

import '../../util/license/service.dart';

class AcknowledgementsSliverList extends StatelessWidget {
  const AcknowledgementsSliverList({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder<LicenseData>(
        future: context.read<LicenseService>().licenses,
        builder: (_, snapshot) => Builder(
          key: ValueKey(snapshot.connectionState),
          builder: (context) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return _acknowledgementsList(snapshot.data!);
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return _acknowledgementsListLoading();
            }
          },
        ),
      );

  static Widget _acknowledgementsListLoading() => const SliverFillRemaining(
        child: Center(child: CupertinoActivityIndicator()),
      );

  static Widget _acknowledgementsList(
    final LicenseData data,
  ) =>
      SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: data.packages.length,
          (context, index) {
            final packageName = data.packages.elementAt(index);

            return _AcknowledgementsListTile(
              packageName: packageName,
              numberLicenses:
                  data.packageLicenseBindings[packageName]?.length ?? 0,
              onTap: () =>
                  AcknowledgementDetailRoute(id: packageName).push(context),
            );
          },
        ),
      );
}

class _AcknowledgementsListTile extends StatelessWidget {
  final String packageName;

  final int numberLicenses;

  final Function()? onTap;

  const _AcknowledgementsListTile({
    required this.packageName,
    required this.numberLicenses,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // key: ValueKey(index),
      title: Text(packageName),
      trailing: const Icon(ElementSymbol.chevronForward),
      subtitle: Text(MaterialLocalizations.of(context)
          .licensesPackageDetailText(numberLicenses)),
      onTap: onTap,
    );
  }
}
