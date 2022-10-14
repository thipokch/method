import 'package:method/components/app_info/view.dart';
import 'package:method/components/appearance/route.dart';
import 'package:method/components/privacy/route.dart';
import 'package:method/route/routes.dart';
import 'package:method_bloc/app/app_bloc.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../acknowledgement_list/route.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AppBloc, AppState>(builder: (context, state) {
        section(text) => Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Text(
                text,
                style: Theme.of(context).textTheme.caption,
              ),
            );

        toTile(e) => ListTile(
              title: Text(e.key),
              trailing: const Icon(ElementSymbol.chevronForward),
              onTap: () => e.value(context),
            );

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: ElementScale.spaceM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ...{
                "Data & Privacy": PrivacyRoute().push,
              }.entries.map(toTile),
              section("GENERAL"),
              ...{
                "Appearance": AppearanceRoute().push,
              }.entries.map(toTile),
              section("ABOUT"),
              ...{
                "Acknowledgements": AcknowledgementListRoute().push,
              }.entries.map(toTile),
              const AppInfoView(),
            ],
          ),
        );
      });
}
