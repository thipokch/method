part of 'component.dart';

class _View extends StatelessWidget {
  final ThemeMode themeMode;

  const _View({
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    tile(e) => ListTile(
          title: Text(e.key),
          trailing: Visibility(
            visible: themeMode == e.value,
            child: const Icon(ElementSymbol.checkmark),
          ),
          onTap: () => context.read<AppBloc>().add(
                AppEvent.updateThemeMode(
                  themeMode: e.value,
                ),
              ),
        );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...{
          "Automatic": ThemeMode.system,
          "Dark": ThemeMode.dark,
          "Light": ThemeMode.light,
        }.entries.map(tile).toList(),
      ],
    );
  }
}
