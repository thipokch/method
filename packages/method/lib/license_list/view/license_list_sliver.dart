part of 'license_list_view.dart';

class LicenseListSliver extends StatelessWidget {
  const LicenseListSliver({super.key});

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: ElementScale.spaceM),
        sliver: LicenseListBuilder(
          builder: (context, state) => state == null
              ? const SliverFillRemaining(child: CupertinoActivityIndicator())
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        _LicenseListTile.itemBuilder(context, index, state),
                  ),
                ),
        ),
      );
}
