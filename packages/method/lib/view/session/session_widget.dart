import 'package:card_swiper/card_swiper.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/airbrush/airbrush_gradient_image.dart';
import 'package:method_ui/airbrush/airbrush_painter.dart';
import 'package:method_ui/page/art_page.dart';
import 'package:method_ui/util/theme_image_shader.dart';
import 'package:method/view/session_list/session_list_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:method_repo/repository.dart';

import '../entry/entry_widget.dart';
import '../entry/entry_editor.dart';

part 'exercise_card.dart';
part 'session_page.dart';
part 'session_editor.dart';

class _SessionWidget extends StatelessWidget {
  final Widget child;
  final Exercise exercise;
  final Session? session;
  final ThemeData? theme;

  const _SessionWidget({
    required this.exercise,
    required this.session,
    required this.theme,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider(
      create: ((context) => SessionBloc(
            repo: context.read<Repository>(),
            exercise: exercise,
          )),
      child: child,
    );

    return theme == null
        ? FutureBuilder<ImageShader>(
            future: loadEmojiShader(exercise.icon),
            builder: (context, snapshot) => Theme(
              data: Theme.of(context).copyWith(
                // colorScheme: exercise.presentation
                //     .colorScheme(Theme.of(context).brightness)
                //     .harmonizeWith(Theme.of(context).colorScheme.primary),
                extensions: [
                  ...Theme.of(context).extensions.values,
                  ThemeImageShader(snapshot.data),
                ],
              ),
              child: bloc,
            ),
          )
        : bloc;
  }
}
