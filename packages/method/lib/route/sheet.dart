import 'package:method_style/element_react.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

const double _kPreviousPageVisibleOffset = 10;

const BoxShadow _kDefaultBoxShadow =
    BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 5);

class RootSheet extends Page {
  final WidgetBuilder builder;
  final RouteSettings? settings;
  final bool maintainState;
  final bool fullscreenDialog;

  const RootSheet({
    required this.builder,
    this.settings,
    this.maintainState = true,
    this.fullscreenDialog = false,
  });

  @override
  MaterialWithModalsPageRoute createRoute(BuildContext context) =>
      MaterialWithModalsPageRoute(
        builder: builder,
        settings: this,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      );
}

class Sheet extends Page {
  final Widget body;
  final SmoothRadius? topRadius;
  final Color? transitionBackgroundColor;
  final SystemUiOverlayStyle? overlayStyle;
  final Color? backgroundColor;
  final double? elevation;
  final double? closeProgressThreshold;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final Color? barrierColor;
  final bool expand;
  final AnimationController? secondAnimation;
  final Curve? animationCurve;
  final Curve? previousRouteAnimationCurve;
  final bool useRootNavigator;
  final bool bounce;
  final bool? isDismissible;
  final bool enableDrag;
  final Duration? duration;
  final RouteSettings? settings;
  final BoxShadow? shadow;

  Sheet({
    required this.body,
    this.topRadius,
    this.transitionBackgroundColor = Colors.black,
    this.overlayStyle,
    this.backgroundColor,
    this.elevation,
    this.closeProgressThreshold,
    this.shape,
    this.clipBehavior,
    this.barrierColor,
    this.expand = false,
    this.secondAnimation,
    this.animationCurve,
    this.previousRouteAnimationCurve,
    this.useRootNavigator = false,
    this.bounce = true,
    this.isDismissible,
    this.enableDrag = true,
    this.duration,
    this.settings,
    this.shadow,
  }) : super(key: ValueKey(body));

  @override
  CupertinoModalBottomSheetRoute createRoute(BuildContext context) =>
      CupertinoModalBottomSheetRoute(
        settings: this,
        builder: (context) => Material(child: body),
        containerBuilder: (context, animation, child) => _SheetContainer(
          topRadius: topRadius ?? ElementReact.screenCornerRadius(context),
          backgroundColor: backgroundColor,
          child: body,
        ),
        secondAnimationController: secondAnimation,
        expanded: expand,
        closeProgressThreshold: closeProgressThreshold,
        barrierLabel: Localizations.of<MaterialLocalizations>(
                  context,
                  MaterialLocalizations,
                ) !=
                null
            ? MaterialLocalizations.of(context).modalBarrierDismissLabel
            : '',
        elevation: elevation,
        bounce: bounce,
        shape: shape,
        clipBehavior: clipBehavior,
        isDismissible: isDismissible ?? !expand ? true : false,
        modalBarrierColor: barrierColor ?? Colors.black12,
        enableDrag: enableDrag,
        topRadius: topRadius ?? ElementReact.screenCornerRadius(context),
        animationCurve: animationCurve,
        previousRouteAnimationCurve: previousRouteAnimationCurve,
        duration: duration,
        transitionBackgroundColor: transitionBackgroundColor ?? Colors.black,
        overlayStyle: overlayStyle,
      );
}

class _SheetContainer extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final SmoothRadius topRadius;
  final BoxShadow? shadow;

  const _SheetContainer({
    Key? key,
    this.backgroundColor,
    required this.topRadius,
    // ignore: unused_element
    this.shadow,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topSafeAreaPadding = MediaQuery.of(context).padding.top;
    final topPadding = _kPreviousPageVisibleOffset + topSafeAreaPadding;

    final effectiveShadow = shadow ?? _kDefaultBoxShadow;
    final effectiveBackgroundColor =
        backgroundColor ?? CupertinoTheme.of(context).scaffoldBackgroundColor;

    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: ClipSmoothRect(
        // borderRadius: BorderRadius.vertical(top: topRadius),
        radius: SmoothBorderRadius.vertical(top: topRadius),
        child: Container(
          decoration: BoxDecoration(
            color: effectiveBackgroundColor,
            boxShadow: [effectiveShadow],
          ),
          width: double.infinity,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true, // Remove top Safe Area
            child: child,
          ),
        ),
      ),
    );
  }
}
