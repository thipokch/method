part of 'license_list_view.dart';

class LicenseListSliver extends StatelessWidget {
  const LicenseListSliver({super.key});

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: MtSpaces.M),
        sliver: LicenseListBuilder(
          builder: (context, state) => state == null
              ? const SliverFillRemaining(child: CupertinoActivityIndicator())
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: state.packages.length,
                    (context, index) =>
                        _LicenseListTile.itemBuilder(context, index, state),
                  ),
                ),
        ),
      );
}
