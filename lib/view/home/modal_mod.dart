import 'package:flutter/material.dart';
import 'package:matter/nav/nav_bar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Mod extends StatelessWidget {
  const Mod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Navigator(
        onGenerateRoute: (_) => MaterialPageRoute(
          builder: (context) => const A(),
        ),
      ),
    );
  }
}

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CustomScrollView(
        // controller: ModalScrollController.of(context),
        slivers: [
          const MethodSliverNavigationBar(
            stretch: true,
            largeTitle: Text("A"),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Column(
              children: List.generate(
                100,
                (index) => ListTile(
                  title: const Text('Item'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const B(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      );
}

class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CustomScrollView(
        // controller: ModalScrollController.of(context),
        slivers: [
          const MethodSliverNavigationBar(
            stretch: true,
            largeTitle: Text("B"),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Column(
              children: List.generate(
                100,
                (index) => ListTile(
                  title: const Text('Item'),
                  // ignore: no-empty-block
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => B(),
                    //   ),
                    // );
                  },
                ),
              ),
            ),
          ),
        ],
      );
}

class ModTemplate extends StatelessWidget {
  const ModTemplate({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
    this.heroTag,
    this.child,
  }) : super(key: key);

  final String title;
  final Object? heroTag;
  final Widget? leading;
  final Widget? trailing;
  final Widget? child;

  @override
  Widget build(BuildContext context) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background),
        child: CustomScrollView(
          controller: ModalScrollController.of(context),
          slivers: <Widget>[
            MethodSliverNavigationBar(
              stretch: true,
              heroTag: heroTag ?? defaultHeroTag,
              largeTitle: Text(title),
              trailing: trailing,
              leading: leading,
            ),
            // builder(context),
            SliverFillRemaining(
              child: child,
            ),
          ],
        ),
      );
}
