import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_style/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppearanceView extends StatelessWidget {
  const AppearanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) => state.map(
            initial: (_) => const Text("initial"),
            loaded: (_) {
              final themeMode = _.themeMode;

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
                    onTap: () => context.read<AppBloc>().add(
                          AppEvent.updateThemeMode(
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
