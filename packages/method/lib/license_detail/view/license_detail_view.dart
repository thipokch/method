import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/element_scale.dart';

import '../license_detail.dart';

part 'license_detail_sliver.dart';

class LicenseDetailView extends StatelessWidget {
  const LicenseDetailView({super.key});

  @override
  Widget build(BuildContext context) => LicenseDetailBuilder(
        builder: (context, state) => state.maybeMap(
          loadedLicenseDetail: (_) {
            final flattened = _.licenseDetail.flatten();

            return ListView.builder(
              itemBuilder: (context, index) => flattened[index] != null
                  ? _LicenseBody(flattened[index]!)
                  : const Padding(
                      padding: EdgeInsets.all(ElementScale.spaceM),
                      child: Divider(),
                    ),
              itemCount: flattened.length,
            );
          },
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

class _LicenseBody extends StatelessWidget {
  const _LicenseBody(this.paragraph);

  final LicenseParagraph paragraph;

  @override
  Widget build(BuildContext context) =>
      paragraph.indent == LicenseParagraph.centeredIndent
          ? Padding(
              padding: const EdgeInsets.only(top: ElementScale.spaceM),
              child: Text(
                paragraph.text,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          : Padding(
              padding: EdgeInsetsDirectional.only(
                top: 8.0,
                start: 16.0 * paragraph.indent,
              ),
              child: Text(paragraph.text),
            );
}

extension Flatten on List<List<LicenseParagraph>> {
  List<LicenseParagraph?> flatten() =>
      [for (final entry in this) ...entry, null];
}
