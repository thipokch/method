import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_core/abstract/define.dart';
import 'package:method_core/abstract/uniform.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';

class HasNoteData extends CustomMatcher {
  HasNoteData(matcher)
      : super("EntryDefinitionNote with data that is", "data", matcher);

  @override
  featureValueOf(actual) => (actual as EntryDefinitionNote).data;
}

class HasExpandedData extends CustomMatcher {
  HasExpandedData(matcher)
      : super("Definition with expanded data that is", "data", matcher);

  @override
  BuiltList<Uniform>? featureValueOf(actual) =>
      (actual as Definition<Uniform, Uniform>).expandedData;
}

class HasBuiltDefinition extends CustomMatcher {
  HasBuiltDefinition(matcher)
      : super(
          "DefinitionBuilder with built definition that is",
          "definition",
          matcher,
        );

  @override
  BuiltDefinition<Uniform, Uniform>? featureValueOf(actual) =>
      (actual as DefinitionBuilder).builtDefinition;
}

class HasTemplate<T, D extends DefineTemplate<T>> extends CustomMatcher {
  HasTemplate(matcher)
      : super(
          "DefineTemplate with template that is",
          "template",
          matcher,
        );

  @override
  T? featureValueOf(actual) => (actual as D).template;
}

// class HasDefinition<D, T extends DefineDefinition<D>> extends CustomMatcher {
//   HasDefinition(matcher)
//       : super(
//           "DefineDefinition with definitions that are",
//           "definitions",
//           matcher,
//         );

//   @override
//   List<D>? featureValueOf(actual) => (actual as T).definitions;
// }
