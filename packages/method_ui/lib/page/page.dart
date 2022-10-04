import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method_style/element_react.dart';
import 'package:method_ui/app_bar/app_bar.dart';
import 'package:method_ui/scaffold/scaffold.dart';

class MtAppPage extends StatelessWidget {
  final String name;
  final String? description;
  final List<Widget> slivers;
  final bool implyLeading;
  final Widget? leading;
  final Widget? trailing;
  final bool isImmersive;

  const MtAppPage({
    super.key,
    required this.name,
    this.description,
    required this.slivers,
    this.implyLeading = true,
    this.leading,
    this.trailing,
    this.isImmersive = false,
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
              implyLeading: implyLeading,
              leading: leading,
              trailing: trailing,
              isImmersive: isImmersive,
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
