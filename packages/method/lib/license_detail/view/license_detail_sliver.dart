part of 'license_detail_view.dart';

class LicenseDetailSliver extends StatelessWidget {
  const LicenseDetailSliver({super.key});

  @override
  Widget build(BuildContext context) => LicenseDetailBuilder(
        builder: (context, state) => state.maybeMap(
          loadedLicenseDetail: (_) {
            final flattened = _.licenseDetail.flatten();

            return SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: flattened.length,
                (context, index) => flattened[index] != null
                    ? _LicenseBody(flattened[index]!)
                    : const Padding(
                        padding: EdgeInsets.all(ElementScale.spaceM),
                        child: Divider(),
                      ),
              ),
            );
          },
          orElse: () =>
              const SliverFillRemaining(child: CupertinoActivityIndicator()),
        ),
      );
}
