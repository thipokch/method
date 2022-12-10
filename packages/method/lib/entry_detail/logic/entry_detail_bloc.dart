import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_repo/method_repo.dart';

part 'entry_detail_event.dart';
part 'entry_detail_state.dart';
part 'entry_detail_bloc.freezed.dart';

typedef EntryDetailBuilder = BlocBuilder<EntryDetailBloc, EntryDetailState>;
typedef EntryDetailListener = BlocListener<EntryDetailBloc, EntryDetailState>;
typedef EntryDetailSelector<T>
    = BlocSelector<EntryDetailBloc, EntryDetailState, T>;
typedef EntryDetailConsumer = BlocConsumer<EntryDetailBloc, EntryDetailState>;

class EntryDetailBloc extends Bloc<EntryDetailEvent, EntryDetailState> {
  EntryDetailBloc({
    required this.id,
    required this.repository,
  }) : super(const _Initial()) {
    // on<_Start>(_onStart);
    add(const _Start());
  }

  final String id;
  final Repository repository;

  // void _onStart(_Start event, Emitter<EntryDetailState> emit) => emit.forEach(
  //       repository.entries.stream(id),
  //       onData: _onData,
  //       onError: _onError,
  //     );

  // STREAM EVENTS

  EntryDetailState _onData(Entry? entry) {
    log("$runtimeType - data");

    return entry != null
        ? _Started(entry: entry)
        : _onError("Given session ($id) returns null.", StackTrace.current);
  }

  _Errored _onError(Object error, StackTrace stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    onError(error, stackTrace);

    return _Errored(error: error, stackTrace: stackTrace);
  }

  // BLOC EVENTS

  @override
  void onEvent(event) {
    // TODO: implement analytics here
    log("$runtimeType - event : $event");
    super.onEvent(event);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }
}
