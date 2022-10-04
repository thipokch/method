import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method_style/element_react.dart';
import 'package:method_ui/app_bar/app_bar.dart';
import 'package:method_ui/scaffold/scaffold.dart';

class MtTitlePage extends StatelessWidget {
  final String name;
  final String? description;
  final List<Widget> slivers;
  final Widget? leading;
  final Widget? trailing;

  const MtTitlePage({
    super.key,
    required this.name,
    this.description,
    required this.slivers,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => ClipSmoothRect(
        radius: SmoothBorderRadius.all(
          ElementReact.screenCornerRadius(context),
        ),
        child: MtScaffold(
          slivers: [
            MtSliverAppBar(
              name: name,
              description: description,
              leading: leading,
              trailing: trailing,
            ),
            ...slivers,
          ],
        ),
      );
}

void show({
  required BuildContext context,
  required WidgetBuilder builder,
}) =>
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => builder(context),
    ));
