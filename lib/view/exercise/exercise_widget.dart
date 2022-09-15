import 'package:card_swiper/card_swiper.dart';
import 'package:component/exercise/exercise_bloc.dart';
import 'package:component/task/task_bloc.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:element/element_color.dart';
import 'package:element/element_motion.dart';
import 'package:element/element_react.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_symbol.dart';
import 'package:element/element_touch.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/airbrush/airbrush_gradient_image.dart';
import 'package:matter/airbrush/airbrush_painter.dart';
import 'package:matter/button/button_filled.dart';
import 'package:matter/util/theme_image_shader.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../task/task_widget.dart';
import '../task/task_editor.dart';

part 'exercise_card.dart';
part 'exercise_page.dart';
part 'exercise_editor.dart';

class _ExerciseWidget extends StatelessWidget {
  final Widget child;
  final Exercise? _exercise;
  final ExerciseBloc? _bloc;
  final ThemeData? _theme;

  const _ExerciseWidget({
    // ignore: unused_element
    super.key,
    required Exercise exercise,
    required this.child,
  })  : _exercise = exercise,
        _bloc = null,
        _theme = null;

  const _ExerciseWidget.from({
    // ignore: unused_element
    super.key,
    required ExerciseBloc bloc,
    required ThemeData theme,
    required this.child,
  })  : _exercise = null,
        _bloc = bloc,
        _theme = theme;

  @override
  Widget build(BuildContext context) =>
      (_exercise != null || _bloc == null || _theme == null)
          ? FutureBuilder<ImageShader>(
              future: loadEmojiShader(_exercise!.icon),
              builder: (context, snapshot) => Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: _exercise!.presentation
                      .colorScheme(Theme.of(context).brightness)
                      .harmonizeWith(Theme.of(context).colorScheme.primary),
                  extensions: [
                    ...Theme.of(context).extensions.values,
                    ThemeImageShader(snapshot.data),
                  ],
                ),
                child: BlocProvider(
                  create: ((context) => ExerciseBloc(exercise: _exercise!)),
                  child: child,
                ),
              ),
            )
          : Theme(
              data: _theme!,
              child: BlocProvider.value(
                value: _bloc!,
                child: child,
              ),
            );
}
