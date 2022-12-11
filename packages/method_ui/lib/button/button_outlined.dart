import 'package:method_ui/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/patch/ink_sparkle.dart';

import 'button_icon.dart';
import 'button_states.dart';

class ButtonOutlined extends OutlinedButton {
  const ButtonOutlined({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget child,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          style: style,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          child: child,
        );

  bool get isEnabled => onPressed != null;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return super
        .defaultStyleOf(
          context,
        )
        .copyWith(
          elevation: ButtonStyleButton.allOrNull(.0),
          foregroundColor: ButtonForeground(
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.onSurface,
          ),
          overlayColor: ButtonOverlay(
            Theme.of(context).colorScheme.primary,
          ),
          splashFactory: InkSparklePatch.splashFactory,
          side: MaterialStateProperty.all(
            BorderSide(
              width: ElementScale.strokeL,
              color: isEnabled
                  ? colorScheme.primary
                  : colorScheme.outline.withOpacity(0.12),
            ),
          ),
        );
  }

  factory ButtonOutlined.icon({
    Key? key,
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    required Widget icon,
    required Widget label,
  }) {
    return ButtonOutlined(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      clipBehavior: clipBehavior ?? Clip.none,
      child: ButtonIcon(
        icon: icon,
        label: label,
      ),
    );
  }
}
