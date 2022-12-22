part of 'settings_appearance_view.dart';

class SettingsAppearanceSliver extends StatelessWidget {
  const SettingsAppearanceSliver({super.key});

  @override
  Widget build(BuildContext context) => SettingsAppearanceBuilder(
        buildWhen: (previous, current) =>
            current.themeMode != previous.themeMode,
        builder: (context, state) => SliverList(
          delegate: SliverChildListDelegate(
            _ListChildren(context.read()).children(),
          ),
        ),
      );
}
