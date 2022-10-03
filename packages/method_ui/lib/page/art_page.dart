import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method_style/element_react.dart';
import 'package:method_ui/app_bar/art_bar.dart';
import 'package:method_ui/scaffold/scaffold.dart';

class MtArtPage extends StatelessWidget {
  final String name;
  final String description;
  final String cta;
  final VoidCallback? onCtaPressed;
  final List<Widget> slivers;
  final Widget? leading;
  final Widget? trailing;

  const MtArtPage(
      {super.key,
      required this.name,
      required this.description,
      required this.cta,
      required this.onCtaPressed,
      required this.slivers,
      this.leading,
      this.trailing});

  @override
  Widget build(BuildContext context) => ClipSmoothRect(
        radius: SmoothBorderRadius.all(
          ElementReact.screenCornerRadius(context),
        ),
        child: MtScaffold(
          slivers: [
            MtSliverArtBar(
              name: name,
              description: description,
              cta: cta,
              onCtaPressed: onCtaPressed,
              leading: leading,
              trailing: trailing,
            ),
            ...slivers,
          ],
        ),
      );
}