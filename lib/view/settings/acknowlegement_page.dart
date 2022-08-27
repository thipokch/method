import 'dart:developer' show Timeline, Flow;

import 'package:element/element_icon.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Flow;
import 'package:flutter/scheduler.dart';
import 'package:matter/page/page.dart';
import 'package:matter/scroll/pairing_scroll_controller.dart';

part 'acknowlegement_detail.dart';

class AcknowlegementPage extends MethodPage {
  const AcknowlegementPage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
    super.controller,
  }) : super(
          key: key,
          title: "Acknowledgement",
          child: const _PackagesList(),
        );
}

class _PackagesList extends StatefulWidget {
  const _PackagesList({
    Key? key,
  }) : super(key: key);

  @override
  _PackagesListState createState() => _PackagesListState();
}

class _PackagesListState extends State<_PackagesList> {
  final Future<_LicenseData> licenses = LicenseRegistry.licenses
      .fold<_LicenseData>(
        _LicenseData(),
        (_LicenseData prev, LicenseEntry license) => prev..addLicense(license),
      )
      .then((_LicenseData licenseData) => licenseData..sortPackages());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<_LicenseData>(
      future: licenses,
      builder: (BuildContext context, AsyncSnapshot<_LicenseData> snapshot) {
        return LayoutBuilder(
          key: ValueKey<ConnectionState>(snapshot.connectionState),
          builder: (BuildContext context, BoxConstraints constraints) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return _packagesList(
                  context,
                  snapshot.data!,
                );
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Material(
                  color: Theme.of(context).cardColor,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.width,
                    ),
                    child: const cupertino.CupertinoActivityIndicator(),
                  ),
                );
            }
          },
        );
      },
    );
  }

  Widget _packagesList(
    final BuildContext context,
    final _LicenseData data,
  ) {
    final List<Widget> packages = <Widget>[
      ...data.packages
          .asMap()
          .entries
          .map<Widget>((MapEntry<int, String> entry) {
        final String packageName = entry.value;
        final int index = entry.key;
        final List<int> bindings = data.packageLicenseBindings[packageName]!;
        final List<LicenseEntry> licenses =
            bindings.map((int i) => data.licenses[i]).toList(growable: false);

        return _PackageListTile(
          packageName: packageName,
          index: index,
          numberLicenses: bindings.length,
          onTap: () => AcknowlegementDetail(
            controller: PairingScrollController.of(context)?.push(),
            packageName: packageName,
            licenseEntries: licenses,
          ).show(context: context),
        );
      }),
    ];

    return Column(
      children: packages,
    );
    // return ListView.separated(
    //   // controller: ModalScrollController.of(context),
    //   padding: const EdgeInsets.symmetric(vertical: 16.0),
    //   itemBuilder: (context, index) => packages[index],
    //   separatorBuilder: (context, index) => const Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 12),
    //     child: Divider(
    //       height: 0,
    //     ),
    //   ),
    //   itemCount: packages.length,
    // );
  }
}

class _PackageListTile extends StatelessWidget {
  const _PackageListTile({
    Key? key,
    required this.packageName,
    this.index,
    required this.numberLicenses,
    this.onTap,
  }) : super(key: key);

  final String packageName;
  final int? index;
  final int numberLicenses;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(packageName),
      trailing: const Icon(ElementIcon.chevronForward),
      subtitle: Text(MaterialLocalizations.of(context)
          .licensesPackageDetailText(numberLicenses)),
      onTap: onTap,
    );
  }
}

class _LicenseData {
  final List<LicenseEntry> licenses = <LicenseEntry>[];
  final Map<String, List<int>> packageLicenseBindings = <String, List<int>>{};
  final List<String> packages = <String>[];

  String? firstPackage;

  void addLicense(LicenseEntry entry) {
    for (final String package in entry.packages) {
      _addPackage(package);

      packageLicenseBindings[package]!.add(licenses.length);
    }
    licenses.add(entry);
  }

  void _addPackage(String package) {
    if (!packageLicenseBindings.containsKey(package)) {
      packageLicenseBindings[package] = <int>[];
      firstPackage ??= package;
      packages.add(package);
    }
  }

  void sortPackages([int Function(String a, String b)? compare]) {
    packages.sort(compare ??
        (String a, String b) {
          if (a == firstPackage) {
            return -1;
          }
          if (b == firstPackage) {
            return 1;
          }

          return a.toLowerCase().compareTo(b.toLowerCase());
        });
  }
}
