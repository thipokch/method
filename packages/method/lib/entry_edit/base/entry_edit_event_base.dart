part of 'entry_edit_bloc_base.dart';

abstract class EntryEditEventBase {
  const EntryEditEventBase();
}

mixin EntryEditBase_Start on EntryEditEventBase {
  BuildEntryDefinition get definitions;
}
