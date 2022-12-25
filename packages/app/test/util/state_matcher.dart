import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_app/session_edit/logic/session_edit_bloc.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/model/task_definition.dart';

class EntryEditStateWithDefinitions extends CustomMatcher {
  EntryEditStateWithDefinitions(matcher)
      : super(
          "EntryEditStateBase with definition that is",
          "definition",
          matcher,
        );

  @override
  Definition<TaskDefinition, EntryDefinition>? featureValueOf(actual) =>
      (actual as EntryEditBase_Started).definitions;
}

class SessionEditStateWithSession extends CustomMatcher {
  SessionEditStateWithSession(matcher)
      : super(
          "SessionEditState with session that is",
          "session",
          matcher,
        );

  @override
  Session? featureValueOf(actual) => (actual as SessionEditState).session;
}
