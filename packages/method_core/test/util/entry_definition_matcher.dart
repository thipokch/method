import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/model/entry_definition.dart';

class HasDefinitionData extends CustomMatcher {
  HasDefinitionData(matcher)
      : super("EntryDefinitionNote with data that is", "data", matcher);

  @override
  featureValueOf(actual) => (actual as EntryDefinitionNote).data;
}
