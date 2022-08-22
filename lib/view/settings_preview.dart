import 'package:element/element_icon.dart';
import 'package:flutter/material.dart';
import 'package:method/view/settings_view.dart';

class SettingsPreview extends StatelessWidget {
  const SettingsPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("View"),
          leading: IconButton(
            icon: const Icon(ElementIcon.brandArrowLeft),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: const <Widget>[],
        ),
        body: const SettingsView(),
      );
}
