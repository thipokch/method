import 'package:flutter/material.dart';

class ThemeImageShader extends ThemeExtension<ThemeImageShader> {
  final ImageShader? shader;

  ThemeImageShader(this.shader);

  @override
  ThemeExtension<ThemeImageShader> copyWith({
    ImageShader? shader,
  }) =>
      ThemeImageShader(shader ?? this.shader);

  @override
  ThemeExtension<ThemeImageShader> lerp(
    ThemeExtension<ThemeImageShader>? other,
    double t,
  ) =>
      this;
}
