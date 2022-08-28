import 'package:flutter/material.dart';

import '../nav/nav_bar.dart';

typedef MethodPageBuilder = MethodPage Function(BuildContext context);

class MethodPage extends StatefulWidget {
  const MethodPage({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
    this.heroTag,
    this.child,
    this.controller,
  }) : super(key: key);

  final String title;
  final ScrollController? controller;
  final Object? heroTag;
  final Widget? leading;
  final Widget? trailing;
  final Widget? child;

  @override
  State<StatefulWidget> createState() => _MethodPageState();
}

class _MethodPageState extends State<MethodPage> {
  @override
  void dispose() {
    widget.controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: CustomScrollView(
          controller: widget.controller,
          slivers: <Widget>[
            MethodSliverNavigationBar(
              stretch: true,
              heroTag: widget.heroTag ?? defaultHeroTag,
              largeTitle: Text(widget.title),
              trailing: widget.trailing,
              leading: widget.leading,
            ),
            SliverToBoxAdapter(
              child: Material(
                type: MaterialType.transparency,
                child: widget.child,
              ),
            ),
          ],
        ),
      );
}

void show({
  required BuildContext context,
  required MethodPageBuilder builder,
}) =>
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => builder(context),
    ));
