import 'package:flutter/material.dart';
import 'package:method_app/settings_list/settings_list.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: "Default", type: SettingsListPage)
Widget buildSettingsList(BuildContext context) =>
    const SettingsListRoute().build(context);
