import 'package:element/element_typography.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Typography reference tokens -> Font name', () {
    expect(ElementTypography.brand, "NotoSans");
    expect(ElementTypography.plain, "NotoSans");
  });
}
