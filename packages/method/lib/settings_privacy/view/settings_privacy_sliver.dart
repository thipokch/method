part of 'settings_privacy_view.dart';

class SettingsPrivacySliver extends StatelessWidget {
  const SettingsPrivacySliver({super.key});

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: ElementScale.spaceM),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            _ListChildren.children(bloc: context.read()),
          ),
        ),
      );
}
