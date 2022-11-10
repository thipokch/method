part of 'entry_edit_bloc_base.dart';

abstract class EntryEditStateBase {
  const EntryEditStateBase();

  Definition<TaskDefinition, EntryDefinition>? get definitions => null;
}

mixin EntryEditBase_Initial on EntryEditStateBase {}

mixin EntryEditBase_Started<
        D extends Definition<TaskDefinition, EntryDefinition>>
    on EntryEditStateBase {
  @override
  D get definitions;
}

mixin EntryEditBase_Errored on EntryEditStateBase {
  Object get error;
  StackTrace get stackTrace;
}
