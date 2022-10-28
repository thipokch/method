part of 'entry_edit_bloc_base.dart';

abstract class EntryEditStateBase {
  const EntryEditStateBase();

  Entry? get entry => null;
  Task? get task => null;
}

mixin EntryEditBase_Initial on EntryEditStateBase {}

mixin EntryEditBase_Started on EntryEditStateBase {
  @override
  Entry get entry;
}

mixin EntryEditBase_Errored on EntryEditStateBase {
  Object get error;
  StackTrace get stackTrace;
}
