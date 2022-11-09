part of 'entry_edit_bloc_base.dart';

abstract class EntryEditEventBase {
  const EntryEditEventBase();
}

mixin EntryEditBase_Start<D extends Definition<TaskDefinition, EntryDefinition>>
    on EntryEditEventBase {
  D get definitions;
}
