import 'dart:ui';

import 'package:method_ui/riso/riso_canvas_sprv.dart';
import 'package:method_ui/riso/riso_image_sprv.dart';

class RisoShader {
  final FragmentProgram risoCanvasFp;
  final FragmentProgram risoImageFp;

  const RisoShader._(
    this.risoCanvasFp,
    this.risoImageFp,
  );

  static Future<RisoShader> load() async => RisoShader._(
        await risoCanvasFragmentProgram(),
        await risoImageFragmentProgram(),
      );
}
