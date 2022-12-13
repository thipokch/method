import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';

class MtArtPage extends StatelessWidget {
  final Widget emoji;
  final Widget name;
  final Widget? description;
  final Widget? action;
  final Widget? background;
  final List<Widget> slivers;
  final Widget? leading;
  final Widget? trailing;

  const MtArtPage({
    super.key,
    required this.emoji,
    required this.name,
    this.description,
    this.action,
    this.background,
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
            action: action,
            background: background,
            leading: leading,
            trailing: trailing,
          ),
          ...slivers,
        ],
      );
}
