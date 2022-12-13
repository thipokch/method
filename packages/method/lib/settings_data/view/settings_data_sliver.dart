part of 'settings_data_view.dart';

class SettingsDataSliver extends StatelessWidget {
  const SettingsDataSliver({super.key});

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
