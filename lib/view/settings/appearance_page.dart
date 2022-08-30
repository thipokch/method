import 'package:component/settings/settings_bloc.dart';
import 'package:element/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/page/page.dart';

class AppearancePage extends MethodPage {
  const AppearancePage({
    Key? key,
    super.heroTag,
    super.leading,
    super.trailing,
    super.controller,
  }) : super(
          key: key,
          title: "Appearance",
          child: const _AppearanceList(),
        );
}

class _AppearanceList extends StatelessWidget {
  const _AppearanceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) => state.when(
            initial: () => const Text("initial"),
            loaded: (themeMode) {
              final Map<String, ThemeMode> themes = {
                "Automatic": ThemeMode.system,
                "Dark": ThemeMode.dark,
                "Light": ThemeMode.light,
              };

              final List<Widget> items = [
                ...themes.entries.map(
                  (e) => ListTile(
                    title: Text(e.key),
                    trailing: Visibility(
                      visible: themeMode == e.value,
                      child: const Icon(ElementSymbol.checkmark),
                    ),
                    onTap: () => context.read<SettingsBloc>().add(
                          SettingsEvent.themeModeUpdated(
                            themeMode: e.value,
                          ),
                        ),
                  ),
                ),
              ];

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: items,
              );

              // return ListView.separated(
              //   shrinkWrap: true,
              //   padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
              //   separatorBuilder: (context, index) => const Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 12),
              //     child: Divider(
              //       height: 0,
              //     ),
              //   ),
              //   itemCount: items.length,
              //   itemBuilder: (context, index) => items[index],
              // );
            },
          ),
        ),
      );
}
