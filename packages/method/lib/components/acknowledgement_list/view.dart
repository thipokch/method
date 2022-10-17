part of 'component.dart';

class _Sliver extends StatelessWidget {
  final LicenseData license;

  const _Sliver({
    required this.license,
  });

  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: license.packages.length,
          (context, index) {
            final packageName = license.packages.elementAt(index);

            return _AcknowledgementsListTile(
              packageName: packageName,
              numberLicenses:
                  license.packageLicenseBindings[packageName]?.length ?? 0,
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
