import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_model/model.dart';

void main() {
  group('ModelRoute', () {
    testWidgets('renders ModelRoute', (tester) async {
       await tester.pumpWidget(
        Builder( builder: (context) => 
        MaterialApp(home: const ModelRoute().build(context)),
        ),
      );
      expect(find.byType(ModelPage), findsOneWidget);
    });
  });
}
