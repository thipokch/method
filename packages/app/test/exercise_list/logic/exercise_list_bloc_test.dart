import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:method_app/route/app_route.dart';
import 'package:method_app/exercise_list/exercise_list.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_data/collection/exercise.dart';
import 'package:method_data/method_data.dart';
import 'package:mocktail/mocktail.dart';

import '../mock/mock_data.dart';
import '../mock/mock_repository.dart';

void main() {
  group(
    'ExerciseListBloc',
    () {
      late Repository repository;
      late ExerciseRepository exerciseRepo;
      late StreamController<List<Exercise>> exerciseStream;

      setUp(() {
        repository = MockRepository();
        exerciseRepo = MockExerciseRepository();
        exerciseStream = StreamController<List<Exercise>>(
          onListen: () => exerciseStream.add(mockExercises),
        );
        registerFallbackValue(mockExercises[0]);

        when(() => repository.exercises).thenReturn(exerciseRepo);

        when(() => exerciseRepo.streamAll())
            .thenAnswer((_) => exerciseStream.stream);
      });

      blocTest<ExerciseListBloc, ExerciseListState>(
        'Emits _Started when stream starts.',
        build: () => ExerciseListBloc(
          navigator: AppRoute.defaultNavigator,
          repository: repository,
        ),
        act: (_) => _.add(const ExerciseListEvent.start()),
        expect: () => [
          ExerciseListState.started(exercises: mockExercises),
        ],
      );
    },
  );
}
