import 'package:card_swiper/card_swiper.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_color.dart';
import 'package:method_style/element_motion.dart';
import 'package:method_style/element_react.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_style/element_touch.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_ui/airbrush/airbrush_gradient_image.dart';
import 'package:method_ui/airbrush/airbrush_painter.dart';
import 'package:method_ui/button/button_filled.dart';
import 'package:method_ui/util/theme_image_shader.dart';
import 'package:method/view/session_list/session_list_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:method_repo/repository.dart';

import '../entry/entry_widget.dart';
import '../entry/entry_editor.dart';

part 'session_card.dart';
part 'session_page.dart';
part 'session_editor.dart';

class _SessionWidget extends StatelessWidget {
  final Widget child;
  final Exercise? _exercise;
  // final Session? _session;
  final SessionBloc? _bloc;
  final ThemeData? _theme;

  const _SessionWidget({
    // ignore: unused_element
    super.key,
    required Exercise exercise,
    required Session? session,
    required this.child,
  })  : _exercise = exercise,
        // _session = session,
        _bloc = null,
        _theme = null;

  const _SessionWidget.from({
    // ignore: unused_element
    super.key,
    required SessionBloc bloc,
    required ThemeData theme,
    required this.child,
  })  : _exercise = null,
        // _session = null,
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
                  create: (context) => SessionBloc(
                    repo: context.read<Repository>(),
                    exercise: _exercise!,
                  ),
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
