import 'package:flutter/material.dart';
import 'package:method_ui/app_bar/art_bar.dart';
import 'package:method_ui/scaffold/scaffold.dart';

class MtArtPage extends StatelessWidget {
  final String emoji;
  final String name;
  final String description;
  final String cta;
  final VoidCallback? onCtaPressed;
  final List<Widget> slivers;
  final Widget? leading;
  final Widget? trailing;

  const MtArtPage({
    super.key,
    required this.emoji,
    required this.name,
    required this.description,
    required this.cta,
    required this.onCtaPressed,
    required this.slivers,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) => MtScaffold(
        slivers: [
          MtSliverArtBar(
            emoji: emoji,
            name: name,
            description: description,
            cta: cta,
            onCtaPressed: onCtaPressed,
            leading: leading,
            trailing: trailing,
          ),
          ...slivers,
        ],
      );
}
