part of 'entry_edit_bloc_base.dart';

abstract class EntryEditEventBase {
  const EntryEditEventBase();
}

mixin EntryEditBase_StartTask on EntryEditEventBase {
  String get taskId;
}

mixin EntryEditBase_StartEntry on EntryEditEventBase {
  String get entryId;
}
