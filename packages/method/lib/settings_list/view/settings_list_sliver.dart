part of 'settings_list_view.dart';

class SettingsListSliver extends StatelessWidget {
  const SettingsListSliver({super.key});

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: ElementScale.spaceM),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => _ListItems.items(bloc: context.read())[index],
            childCount: _ListItems.items().length,
          ),
        ),
      );
}
