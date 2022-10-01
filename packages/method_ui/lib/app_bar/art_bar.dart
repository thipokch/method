import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:method_style/element_motion.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_style/element_touch.dart';

import '../airbrush/airbrush_painter.dart';
import '../button/button_filled.dart';
import '../util/theme_image_shader.dart';

class MtSliverArtBar extends StatefulWidget {
  final String name;
  final String description;
  final String cta;
  final VoidCallback? onCtaPressed;
  final Widget? leading;
  final Widget? trailing;
  final bool isImmersive;

  const MtSliverArtBar({
    super.key,
    required this.name,
    required this.description,
    required this.cta,
    required this.onCtaPressed,
    this.leading,
    this.trailing,
    this.isImmersive = false,
  });

  @override
  State<MtSliverArtBar> createState() => _MtSliverArtBarState();
}

class _MtSliverArtBarState extends State<MtSliverArtBar>
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
    final imageShader = themeData.extension<ThemeImageShader>()?.shader;
    final colorScheme = themeData.colorScheme;
    final textTheme = themeData.textTheme;

    return SliverAppBar(
      actions: widget.trailing != null ? [widget.trailing!] : null,
      leading: widget.leading ??
          (ModalRoute.of(context)?.canPop ?? false
              ? IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(ElementSymbol.chevronCircleBackFilled),
                  iconSize: 32.00,
                  color: colorScheme.primary,
                )
              : null),
      pinned: true,
      expandedHeight: 440,
      stretch: true,
      primary: !widget.isImmersive,
      onStretchTrigger: () async {
        ElementTouch.select();
      },
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.0,
        background: CustomPaint(
          painter: AirbrushPainter(
            context: context,
            frame: 400,
            colorLighter: colorScheme.tertiaryContainer,
            colorLight: colorScheme.secondaryContainer,
            colorDark: colorScheme.primaryContainer,
            colorDarker: colorScheme.background,
          ),
        ),
        title: Builder(
          builder: (context) {
            final FlexibleSpaceBarSettings settings =
                context.dependOnInheritedWidgetOfExactType<
                    FlexibleSpaceBarSettings>()!;

            final double deltaExtent = settings.maxExtent - settings.minExtent;

            final double t = clampDouble(
              1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent,
              0.0,
              1.0,
            );

            animationController.value = t;

            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Opacity(
                  opacity: 1.0 - ElementMotion.easeOutExpo.transform(t),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      ElementScale.spaceS,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: SizedBox(
                        height: 125 * (1.0 - t),
                        width: 125 * (1.0 - t),
                        child: CustomPaint(
                          painter: AirbrushPainter(
                            context: context,
                            imageShader: imageShader,
                            frame: 400,
                            colorLighter: colorScheme.secondaryContainer,
                            colorLight: colorScheme.primaryContainer,
                            colorDark: colorScheme.background,
                            colorDarker: colorScheme.primary,
                            height: 125 * (1.0 - t),
                            width: 125 * (1.0 - t),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                DefaultTextStyleTransition(
                  style: TextStyleTween(
                    begin: textTheme.headlineSmall!.copyWith(
                      color: colorScheme.onBackground,
                    ),
                    end: textTheme.titleMedium!.copyWith(
                      color: colorScheme.onBackground,
                    ),
                  ).animate(animationController),
                  child: Text(widget.name),
                ),
                Opacity(
                  opacity: 1 - ElementMotion.easeOutExpo.transform(t),
                  child: ClipRect(
                    child: Align(
                      alignment: Alignment.topCenter,
                      heightFactor: 1 - t,
                      child: Padding(
                        padding: const EdgeInsets.all(
                          ElementScale.spaceS,
                        ),
                        child: Column(
                          children: [
                            Text(
                              widget.description,
                              style: textTheme.labelMedium!.copyWith(
                                color: colorScheme.onBackground,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                ElementScale.spaceL,
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: ButtonFilled(
                                  onPressed: widget.onCtaPressed,
                                  child: Text(widget.cta),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
