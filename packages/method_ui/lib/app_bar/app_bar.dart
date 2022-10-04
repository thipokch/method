import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:method_style/element_motion.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';

class MtSliverAppBar extends StatefulWidget {
  final String? emoji;
  final String name;
  final String? description;
  final bool implyLeading;
  final Widget? leading;
  final Widget? trailing;
  final bool isImmersive;

  const MtSliverAppBar({
    super.key,
    this.emoji,
    required this.name,
    this.description,
    this.implyLeading = true,
    this.leading,
    this.trailing,
    this.isImmersive = false,
  });

  @override
  State<MtSliverAppBar> createState() => _MtSliverAppBarState();
}

class _MtSliverAppBarState extends State<MtSliverAppBar>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this);

    if (widget.isImmersive) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    }

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final colorScheme = themeData.colorScheme;
    final textTheme = themeData.textTheme;

    // _TODO: Stretch Expand + Transition
    // https://github.com/flutter/flutter/issues/62298

    return SliverAppBar(
      actions: widget.trailing != null ? [widget.trailing!] : null,
      leading: widget.leading ??
          (widget.implyLeading && (ModalRoute.of(context)?.canPop ?? false)
              ? IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(ElementSymbol.chevronBack),
                  iconSize: ElementScale.iconM,
                )
              : Container()),
      toolbarHeight: 72,
      collapsedHeight: 72,
      automaticallyImplyLeading: true,
      pinned: true,
      stretch: true,
      primary: !widget.isImmersive,
      expandedHeight: 140,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.0,
        title: Builder(builder: (context) {
          final FlexibleSpaceBarSettings settings = context
              .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;

          final double deltaExtent = settings.maxExtent - settings.minExtent;

          final double t = clampDouble(
            1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent,
            0.0,
            1.0,
          );

          animationController.value = t;

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: ElementScale.spaceM,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                DefaultTextStyleTransition(
                  style: TextStyleTween(
                    begin: textTheme.titleLarge,
                    end: textTheme.titleMedium,
                  ).animate(animationController),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(widget.name),
                    ],
                  ),
                ),
                if (widget.description != null &&
                    widget.description!.isNotEmpty)
                  Opacity(
                    opacity: 1 - ElementMotion.easeOutExpo.transform(t),
                    child: ClipRect(
                      child: Align(
                        alignment: Alignment.topLeft,
                        heightFactor: 1 - t,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: ElementScale.spaceM,
                          ),
                          child: Text(
                            widget.description!,
                            textAlign: TextAlign.start,
                            style: textTheme.labelLarge!.copyWith(
                              color: colorScheme.onSurface.withOpacity(0.45),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
