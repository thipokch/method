import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/entry_definition.dart';

class HasEntryDefinitions extends CustomMatcher {
  HasEntryDefinitions(matcher)
      : super(
          "EntryEditStateBase with definition that is",
          "definition",
          matcher,
        );

  @override
  BuiltList<EntryDefinition>? featureValueOf(actual) =>
      (actual as EntryEditBase_Started).definitions.expandedData;
}
