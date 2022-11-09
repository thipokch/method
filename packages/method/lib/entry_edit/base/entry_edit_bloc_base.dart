import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

part 'entry_edit_event_base.dart';
part 'entry_edit_state_base.dart';

abstract class EntryEditBlocBase<E extends EntryEditEventBase,
    S extends EntryEditStateBase> extends Bloc<E, S> {
  EntryEditBlocBase(
    super.initialState, {
    required this.analytics,
  });

  final FirebaseAnalytics? analytics;

  @override
  void onTransition(Transition<E, S> transition) {
    log("$runtimeType - transition: ${transition.event} -> ${transition.nextState}");
    // TODO: implement onTransition
    super.onTransition(transition);
  }
}
