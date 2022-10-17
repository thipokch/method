part of 'component.dart';

class _Page extends StatelessWidget {
  final ThemeMode themeMode;

  const _Page({
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Appearance",
        slivers: [
          SliverToBoxAdapter(
            child: _View(
              themeMode: themeMode,
            ),
          ),
        ],
      );
}
