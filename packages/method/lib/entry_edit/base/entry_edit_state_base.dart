part of 'entry_edit_bloc_base.dart';

abstract class EntryEditStateBase {
  const EntryEditStateBase();

  BuildEntryDefinition? get definitions => null;
}

mixin EntryEditBase_Initial on EntryEditStateBase {}

mixin EntryEditBase_Started on EntryEditStateBase {
  @override
  BuildEntryDefinition get definitions;
}

mixin EntryEditBase_Errored on EntryEditStateBase {
  Object get error;
  StackTrace get stackTrace;
}
