import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method_style/element_react.dart';
import 'package:method_ui/scaffold/scaffold.dart';

class MtPage extends StatelessWidget {
  final List<Widget> slivers;

  const MtPage({
    super.key,
    required this.slivers,
  });

  @override
  Widget build(BuildContext context) => ClipSmoothRect(
        radius: SmoothBorderRadius.all(
          ElementReact.screenCornerRadius(context),
        ),
        child: MtScaffold(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              ),
            ),
            ...slivers,
          ],
        ),
      );
}
