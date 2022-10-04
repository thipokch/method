import 'package:method_bloc/settings/settings_bloc.dart';
import 'package:method_style/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/page/app_page.dart';

class AppearancePage extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;

  const AppearancePage({
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => MtTitlePage(
        name: "Appearance",
        leading: leading,
        trailing: trailing,
        slivers: const [
          SliverToBoxAdapter(
            child: _AppearanceList(),
          ),
        ],
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
