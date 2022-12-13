import 'package:flutter/material.dart';

class MtColorStates {
  static const hover = .08;
  static const disabled = .12;
  static const disabledContent = .38;
  static const focus = .12;
  static const pressed = .12;
  static const dragged = .16;
}

extension ColorStates on Color {
  Color get onHover => withOpacity(MtColorStates.hover);
  Color get onDisabled => withOpacity(MtColorStates.disabled);
  Color get onDisabledContent => withOpacity(MtColorStates.disabledContent);
  Color get onFocus => withOpacity(MtColorStates.focus);
  Color get onPressed => withOpacity(MtColorStates.pressed);
  Color get onDragged => withOpacity(MtColorStates.dragged);
}
