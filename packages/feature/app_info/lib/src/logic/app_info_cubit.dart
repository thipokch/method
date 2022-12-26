import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info_state.dart';
part 'app_info_cubit.freezed.dart';


typedef AppInfoBuilder = BlocBuilder<AppInfoCubit, AppInfoState>;
typedef AppInfoListener = BlocListener<AppInfoCubit, AppInfoState>;
typedef AppInfoSelector<T> = BlocSelector<AppInfoCubit, AppInfoState, T>;
typedef AppInfoConsumer = BlocConsumer<AppInfoCubit, AppInfoState>;

class AppInfoCubit extends Cubit<AppInfoState> {
  AppInfoCubit() : super(const _Initial());

  /// A description for yourCustomFunction 
  FutureOr<void> yourCustomFunction() {
    // TODO: Add Logic
  }
}
