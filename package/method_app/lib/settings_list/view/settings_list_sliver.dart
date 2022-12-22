part of 'settings_list_view.dart';

class SettingsListSliver extends StatelessWidget {
  const SettingsListSliver({super.key});

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: MtSpaces.M),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            _ListChildren.children(bloc: context.read()),
          ),
        ),
      );
}
